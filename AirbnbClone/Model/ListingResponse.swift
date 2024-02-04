//
//  ListingResponse.swift
//  AirbnbClone
//
//  Created by user on 22.01.2024.
//

import Foundation

struct ListingResponse : Decodable {
    var totalCount: Int
    var results: [Result]
}

struct Result : Decodable {
    var id: String
    var listingUrl: String?
    var scrapeId: String?
    var lastScraped: String?
    var name: String?
    var summary: String?
    var space: String?
    var description: String
    var experiencesOffered: String
    var neighborhoodOverview: String?
    var notes: String?
    var transit: String?
    var access: String?
    var interaction: String?
    var houseRules: String?
    var thumbnailUrl: String?
    var mediumUrl: String?
    var pictureUrl: PictureUrl?
    var xlPictureUrl: String?
    var hostId: String?
    var hostUrl: String?
    var hostName: String?
    var hostSince: String?
    var hostLocation: String?
    var hostAbout: String?
    var hostResponseTime: String?
    var hostResponseRate: Int?
    var hostAcceptanceRate: String? //??
    var hostThumbnailUrl: String?
    var hostPictureUrl: String?
    var hostNeighbourhood: String?
    var hostListingsCount: Int?
    var hostTotalListingsCount: Int?
    var hostVerifications: [String]?
    var street: String?
    var neighbourhood: String? /////
    var neighbourhoodCleansed: String?
    var neighbourhoodGroupCleansed: String?
    var city: String?
    var state: String?
    var zipcode: String? /////
    var market: String?
    var smartLocation: String?
    var countryCode: String?
    var country: String?
    var latitude: String?
    var longitude: String?
    var propertyType: String?
    var roomType: String?
    var accommodates: Int?
    var bathrooms: Int?
    var bedrooms: Int?
    var beds: Int?
    var bedType: String?
    var amenities: [String]?
    var squareFeet: Int? ///
    var price: Int?
    var weeklyPrice: Int? //
    var monthlyPrice: Int? //
    var securityDeposit: Int?
    var cleaningFee: Int?
    var guestsIncluded: Int?
    var extraPeople: Int?
    var maximumNights: Int?
    var minimumNights: Int?
    var calendarUpdated: String
    var hasAvailability: String? //??
    var availability30: Int?
    var availability60: Int?
    var availability90: Int?
    var availability365: Int?
    var calendarLastScraped: String?
    var numberOfReviews: Int?
    var firstReview: String?
    var lastReview: String?
    var reviewScoresRating: Int?
    var reviewScoresAccuracy: Int?
    var reviewScoresCleanliness: Int?
    var reviewScoresCheckin: Int?
    var reviewScoresCommunication: Int?
    var reviewScoresLocation: Int?
    var reviewScoresValue: Int?
    var license: String? //
    var jurisdictionNames: String? //
    var cancellationPolicy: String?
    var calculatedHostListingsCount: Int
    var reviewsPerMonth: Double?
    var geolocation: Geolocation
    var features: [String]?
}

struct PictureUrl: Decodable {
    var thumbnail: Bool
    var filename: String
    var format: String
    var width: Int
    var mimetype: String
    var etag: String
    var id: String
    var lastSynchronized: String?
    var colorSummary: [String]?
    var height: Int
    var url: String
}

struct Geolocation: Decodable {
    var lon: Double
    var lat: Double
}


