//
//  ItemList.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-05-24.
//
/*
  This class contains items of class ItemClass and contains methods to read data from JSON into an instance of this class, and write to JSON for saving purposes.
*/

import Foundation
import MapKit

class ItemList : ObservableObject, Codable, Sequence {
    
    //Things to conform to Codable Protocol:
    enum CodingKeys : CodingKey {
        case createdBy
    }
    
    required init (from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        createdBy = try container.decode (String.self, forKey: .createdBy)
    }
    
    func encode (to encoder : Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode (createdBy, forKey: .createdBy)
    }
    
    //Data:
    @Published var createdBy : String //Owner of the list (used for sharing later)
    
    //Array of ItemClasses
    @Published var ItemClassList =  [ItemClass]()
    
    //Function to output data to JSON:
    
    //Function to read from JSON:
    
    //Function to add item to list:
    
    //Function to remove item from list:
    
    
    //Main initializer - used to create a new, empty list:
    init (createdBy : String) {
        self.createdBy = createdBy
    }
    
    //Dummmy data initializer for testing purposes:
    init () {
        self.createdBy = "Patrick Testing Stuff"
        //Apparently this is how you can do regular for loops that aren't for-in loops:
        for _ in 1 ... 5 {
            self.ItemClassList.append(ItemClass())
        }
        
    }
}
