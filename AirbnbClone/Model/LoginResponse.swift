//
//  LoginResponse.swift
//  AirbnbClone
//
//  Created by user on 21.01.2024.
//

import Foundation

struct LoginResponse : Decodable {
    var id: Int
    var username: String
    var email: String
    var firstName: String
    var lastName: String
    var gender: String
    var image: String
    var token: String
}
