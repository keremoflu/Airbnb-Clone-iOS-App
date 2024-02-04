//
//  APIService.swift
//  AirbnbClone
//
//  Created by user on 21.01.2024.
//

import Foundation

class APIService : ObservableObject {
    
    //AUTH LOGIN
    var loginEndpoint = "https://dummyjson.com/auth/login"
    @Published var loginResponse : LoginResponse? = nil
    @Published var isLoginLoading = false
    
    //RESPONSE
    @Published var listingList: ListingResponse? = nil
    @Published var singleHouse: ListingResponse? = nil
    
    
    var endpoint = "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=10"
  
    //var refine = URLQueryItem(name: "refine", value: "city")
    
    func loginUser(username: String, password: String){
        
        isLoginLoading = true
        
        guard let url = URL(string: loginEndpoint)
        else { print("invalidURL")
            return }
                
        
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let body = ["username":username, "password":password]
        let bodyData = try? JSONSerialization.data(
            withJSONObject: body,
            options: []
        )
        request.httpMethod = "POST"
        request.httpBody = bodyData
        
        URLSession.shared.dataTask(with: request){
            (data, response, error) in
            
            DispatchQueue.main.async {
                
                let decoder = JSONDecoder()
                
            if let httpResponse = response as? HTTPURLResponse {
                print("Status Code is: \(httpResponse.statusCode)")
                
                
                //HTTP STATUS CODE - 200
                if(httpResponse.statusCode == 200){
                    
                    if let error = error {
                        print("Something is wrong \(error)")
                        return
                    }
                    
                    //HTTP STATUS CODE - 400
                    if let data = data {
                        
                        do {
                            self.loginResponse = try decoder.decode(LoginResponse.self, from: data)
                            print(self.loginResponse!)
                        } catch {
                            print(error)
                        }
                        
                        
                        
                    }else {
                        print("STATUS CODE IS NOT 200, ERROR OCCURED!")
                    }
                }else if(httpResponse.statusCode == 400){
                    
                    if let data = data {
                        
                        do {
                        
                            let errResponse: ErrorResponse = try decoder.decode(ErrorResponse.self, from: data)
                            print("MESSAGE: \(errResponse.message)")
                        } catch {
                            print(error)
                        }
                        
                    }else {
                        print("STATUS CODE IS NOT 400, ERROR OCCURED!")
                    }
                    
                    
                }
                
                self.isLoginLoading = false
            }
            
        }
        }.resume()
        
    }
    
    func getListing(propertyType: String){
        
        guard let url = URL(string: "\(endpoint)&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22&refine=property_type%3A%22\(propertyType)%22")
        else {
                print("invalidURL")
                return
            }
        
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request){
            (data, response, error) in
            
                
            DispatchQueue.main.async {
                
                if let httpResponse = response as? HTTPURLResponse {
                    print("STATUS CODE IS: \(httpResponse.statusCode)")
                    
                    
                    if(httpResponse.statusCode == 200){
                        
                        if let error = error {
                            print("something is wrong \(error)")
                            return
                        }
                        
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        
                        if let data = data {
                           
                            do {
                                print("DATAAA:::")
                                self.listingList = try decoder.decode(ListingResponse.self, from: data)
                                //print(self.listingList ?? "NOT LOADED")
                            } catch {
                                print(error)
                            }
                            
                            
                        }
                        
                    } else {
                        print("Status Code is NOT 200. ERROR OCCURED!!!")
                    }
                }
                
                
            }
        }
        .resume()
        
    }
    
    func getHouseById(houseId: String){
        
        guard let url = URL(string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?where=id=\(houseId)&limit=30&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22")
                
                //?where=id=15344495&limit=100&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22
        else {
                print("invalidURL")
                return
            }
        
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request){
            (data, response, error) in
            
                
            DispatchQueue.main.async {
                
                if let httpResponse = response as? HTTPURLResponse {
                    print("STATUS CODE OF houseById\(houseId) IS: \(httpResponse.statusCode)")
                    
                    
                    if(httpResponse.statusCode == 200){
                        
                        if let error = error {
                            print("something is wrong \(error)")
                            return
                        }
                        
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        
                        if let data = data {
                           
                            do {
                                print("DATAAA:::")
                                self.singleHouse = try decoder.decode(ListingResponse.self, from: data)
                                print(self.singleHouse ?? "NOT LOADED")
                            } catch {
                                print(error)
                            }
                            
                            
                        }
                        
                    } else {
                        print("Status Code is NOT 200. ERROR OCCURED!!!")
                    }
                }
                
                
            }
        }
        .resume()
        
    }
    
    
    
    
}
