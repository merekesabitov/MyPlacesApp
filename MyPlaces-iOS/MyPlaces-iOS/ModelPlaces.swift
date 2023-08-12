//
//  ModelPlaces.swift
//  MyPlaces-iOS
//
//  Created by Mereke Sabitov on 12.08.2023.
//

import Foundation

struct Place {
    var image: String
    var name: String
    var location: String
    var type: String
    
   static let restaurants = ["Дастархан", "Bonsai", "Burger Heroes", "Kitchen"]
    
   static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurants {
            places.append(Place(image: place, name: place, location: "Aqtau", type: "Ресторан"))
        }
        
        return places
    }
}
