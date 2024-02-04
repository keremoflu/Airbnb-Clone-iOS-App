//
//  FakeHostReview.swift
//  AirbnbClone
//
//  Created by user on 25.01.2024.
//

import Foundation

struct FakeHostReview {
    
    var id: Int
    var name: String
    var imageUrl: String
    var location: String
    var pastTime: String
    var reviewRate: Int
    var description: String
    
    static func getFakeHostReviews() -> [FakeHostReview] {
        
        let fakeHostReviewList = [
            FakeHostReview(id: 1, name: "Kerem", imageUrl: "https://i.pravatar.cc/150?img=3", location: "Istanbul, Türkiye", pastTime: "1 week ago", reviewRate: 4, description: "House was amazing, the view was fabulous!"),
            FakeHostReview(id: 2, name: "Jessie", imageUrl: "https://i.pravatar.cc/150?img=25", location: "Sydney, Australia", pastTime: "3 weeks ago", reviewRate: 5, description: "Best place to stay in Beyoğlu!")
            ]
            
        return fakeHostReviewList
    }
}


