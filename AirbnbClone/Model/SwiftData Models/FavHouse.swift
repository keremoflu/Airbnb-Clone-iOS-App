//
//  FavHouse.swift
//  AirbnbClone
//
//  Created by user on 1.02.2024.
//

import Foundation
import SwiftData

@Model
class FavHouse {
    
    @Attribute(.unique) var id: UUID = UUID()
    var favHouseId: String
    var favHouseImage: String
    var favHouseName: String
    
    init(favHouseId: String, favHouseImage: String, favHouseName: String) {
        self.favHouseId = favHouseId
        self.favHouseImage = favHouseImage
        self.favHouseName = favHouseName
    }
    
    
}
