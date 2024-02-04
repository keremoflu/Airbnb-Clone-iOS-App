//
//  ContentViewModel.swift
//  AirbnbClone
//
//  Created by user on 22.01.2024.
//

import Foundation

class ContentViewModel : ObservableObject {
    
    @Published var propertyTypeList : [String : String] =
    
    [
     "Villa":"Villa",
     "Apartment":"Apartment",
     "Cabin":"Cabin",
     "Hostel":"Hostel",
     "Castle":"Castle"
    ]
    
}
