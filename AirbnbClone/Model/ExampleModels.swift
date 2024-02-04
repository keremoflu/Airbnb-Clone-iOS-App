//
//  ExampleModels.swift
//  AirbnbClone
//
//  Created by user on 23.01.2024.
//

import Foundation

struct ExampleModels {
    
    struct ListingResultExample {
        var result = Result(id: "",
                                     listingUrl: "listingUrl",
                                     scrapeId: "",
                                     lastScraped: "",
                                     name: "",
                                     space: "space",
                                     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tellus integer feugiat scelerisque varius morbi enim nunc faucibus a. Pulvinar etiam non quam lacus. Aliquam etiam erat velit scelerisque in. Consectetur libero id faucibus nisl tincidunt eget nullam non.",
                                     experiencesOffered: "experiences listing",
                                     neighborhoodOverview: "neighborhood overview",
                                     notes: "notes",
                                     transit: "",
                                     access: "",
                                     interaction: "",
                                     houseRules: "",
                                     thumbnailUrl: "",
                                     mediumUrl: "",
                                     pictureUrl: PictureUrl(thumbnail: false, filename: "", format: "", width: 100, mimetype: "JPG", etag: "", id: "", height: 1, url: "https://shorturl.at/moAKV"),
                                     xlPictureUrl: "",
                                     hostId: "",
                                     hostUrl: "",
                                     hostName: "Host Name",
                                     hostSince: "",
                                     hostLocation: "NY",
                                     hostAbout: "hey people!!!",
                                     hostResponseTime: "",
                                     hostResponseRate: 5,
                                     hostAcceptanceRate: "10",
                                     hostThumbnailUrl: "",
                                     hostPictureUrl: "",
                                     hostNeighbourhood: "",
                                     hostListingsCount: 1,
                                     hostTotalListingsCount: 2,
                                     hostVerifications: ["email", "phone"],
                                     street: "",
                                     neighbourhood: "",
                                     neighbourhoodCleansed: "",
                                     neighbourhoodGroupCleansed: "",
                                     city: "New York",
                                     state: "New York",
                                     zipcode: "",
                                     market: "",
                                     smartLocation: "",
                                     countryCode: "",
                                     country: "",
                                     latitude: "",
                                     longitude: "",
                                     propertyType: "Full house",
                                     roomType: "",
                                     accommodates: 4,
                                     bathrooms: 0,
                                     bedrooms: 0,
                                     beds: 2,
                                     bedType: "",
                                     amenities: ["Heating", "Shampoo", "Air conditioning", "Smoke detector", "TV", "Hair dryer", "Washer", "Elevator in building"],
                                     squareFeet: 0,
                                     price: 125,
                                     weeklyPrice: 0,
                                     monthlyPrice: 0,
                                     securityDeposit: 0,
                                     cleaningFee: 0,
                                     guestsIncluded: 0,
                                     extraPeople: 0,
                                     maximumNights: 0,
                                     minimumNights: 0,
                                     calendarUpdated: "",
                                     hasAvailability: "true",
                                     availability30: 0,
                                     availability60: 0,
                                     availability90: 0,
                                     availability365: 0,
                                     calendarLastScraped: "",
                                     numberOfReviews: 227,
                                     firstReview: "",
                                     lastReview: "",
                                     reviewScoresRating: 12,
                                     reviewScoresAccuracy: 0,
                                     reviewScoresCleanliness: 0,
                                     reviewScoresCheckin: 0,
                                     reviewScoresCommunication: 0,
                                     reviewScoresLocation: 0,
                                     reviewScoresValue: 0,
                                     license: "",
                                     jurisdictionNames: "",
                                     cancellationPolicy: "",
                                     calculatedHostListingsCount: 0,
                                     reviewsPerMonth: 0.0,
                                     geolocation: Geolocation(lon: 0.0, lat: 0.0),
                                     features: [""])
        
        var hostExample = HostInfo(hostId: "1", hostName: "Kerem", hostAbout: "Hello, its Kerem", hostPictureUrl: "", hostListingCount: 3, hostVerifications: ["email","phone"])
    }

    struct ListingResponseExample {
        var listing = ListingResponse(totalCount: 1, results: [ListingResultExample().result])
    }

    
}
