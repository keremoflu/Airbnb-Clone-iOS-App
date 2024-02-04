//
//  ContentView.swift
//  AirbnbClone
//
//  Created by user on 21.01.2024.
//

import SwiftUI
import SlidingTabView

struct ExploreView: View {
    
    @State var selectedItem: String? = "Apartment"
    
    @StateObject var homeViewModel = HomeViewModel()
    @StateObject var apiService = APIService()
    
    var body: some View {
        
        VStack {
            
            //TOP PROPERTY TYPE MENU
            GeometryReader { geometry in
                
           
                HStack {
              
                    ForEach (Array(homeViewModel.propertyTypeList.keys), id: \.self){ key in
                        Button {
                            self.selectedItem = homeViewModel.propertyTypeList[key]
                            
                            //Api Call By Property Type
                            apiService.getListing(propertyType: self.selectedItem!)
                        } label: {
                            PropertyTypeCell(propertyName: key, propertyImage: homeViewModel.propertyTypeList[key] ?? "")
                                .frame(width: geometry.size.width*0.15)
                            
                                .modifier(CheckMenuModifier(checked: homeViewModel.propertyTypeList[key] == self.selectedItem))
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity , alignment: .top)
                
            }.frame(height: 48)
          
            //LISTING
            ScrollView (.vertical) {
                VStack {
                    ForEach(apiService.listingList?.results ?? [ExampleModels.ListingResultExample().result], id: \.id){ item in
                        
                        ListingCell(listResult: item)
                    }
                }
                .task {
                    apiService.getListing(propertyType: self.selectedItem!)
                }
            }
               
            Spacer()
            
           
        }
        .ignoresSafeArea()
        .padding(.top)
        
    }
   
}





#Preview {
    ExploreView()
}

