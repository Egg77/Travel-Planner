//
//  ItemStruct.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-02-14.
//

/*
  This is the main data structure in the Travel Planner app. It can accommodate either
  data directly from Apple Maps, or only user-entered information.
  The first iteration of the app will support two states:
  1) Apple Maps location item
  2) Itinerary entry with a custom name and dateTime entries

  Data fields for custom location entries are also present but will not be used
  yet to maintain a focused MVP.
*/

import Foundation
import MapKit

class ItemClass : ObservableObject, Codable {
    
    //Ensuring that all @Published parameters can be correctly encoded/decoded so the class conforms to Codable. Used this tutorial to implement: https://www.hackingwithswift.com/books/ios-swiftui/adding-codable-conformance-for-published-properties
    
    enum CodingKeys : CodingKey {
        case AddedBy
        //case IndexedLocation
        //case Address
        case DummyAddress
        case Name
        case Category
        case CustomName
        case URL
        case PhoneNumber
        case UserNotes
        case latitude
        case longitude
        case StartDateTime
        case EndDateTime
    }
    
    required init (from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        AddedBy = try container.decode (String.self, forKey: .AddedBy)
        //IndexedLocation = try container.decode(MKMapItem.self, forKey: .IndexedLocation)
        //Address = try container.decode (CLPlacemark.self, forKey: .Address)
        DummyAddress = try container.decode (String.self, forKey: .DummyAddress)
        Name = try container.decode (String.self, forKey: .Name)
        Category = try container.decode (String.self, forKey: .Category)
        CustomName = try container.decode (String.self, forKey: .CustomName)
        URL = try container.decode (String.self, forKey: .URL)
        PhoneNumber = try container.decode (String.self, forKey: .PhoneNumber)
        UserNotes = try container.decode (String.self, forKey: .UserNotes)
        latitude = try container.decode (Double.self, forKey: .latitude)
        longitude = try container.decode (Double.self, forKey: .longitude)
        StartDateTime = try container.decode (Date.self, forKey: .StartDateTime)
        EndDateTime = try container.decode (Date.self, forKey: .EndDateTime)
    }
    
    func encode (to encoder : Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        //for local version only, figure out how to add a screenshot of map location - decrease load times, maybe helpful for offline use?
        
        //Whatever I decide to do for IndexedLocation
        //Whatever I decide to do for Address
        try container.encode (AddedBy, forKey: .AddedBy)
        try container.encode (DummyAddress, forKey: .DummyAddress)
        try container.encode (Name, forKey: .Name)
        try container.encode (Category, forKey: .Category)
        try container.encode (CustomName, forKey: .CustomName)
        try container.encode (URL, forKey: .URL)
        try container.encode (PhoneNumber, forKey: .PhoneNumber)
        try container.encode (UserNotes, forKey: .UserNotes)
        try container.encode (latitude, forKey: .latitude)
        try container.encode (longitude, forKey: .longitude)
        try container.encode (StartDateTime, forKey: .StartDateTime)
        try container.encode (EndDateTime, forKey: .EndDateTime)
    }
    
    //var ItemID : Int //For internal reference
    @Published var AddedBy : String //For shared features
    
    //Maps Location Data
    //PATRICK: Looks like MKMapItems and CLPLacemark can't easily be made to conform to codable, and the Internet is telling me that storing MKMapItems is kind of pointless because they're pretty transient. Instead, I need to extract the necessary information out of them to reproduce the item with a new call. Check out this link: https://developer.apple.com/documentation/corelocation/converting_between_coordinates_and_user-friendly_place_names
    //@Published var IndexedLocation : MKMapItem? //Maps Item
    
    
    //App specific items either pulled from Maps data or entered manually by user:
    //@Published var Address: CLPlacemark? //From Maps
    @Published var DummyAddress : String? //For development/testing
    @Published var Name : String? //From Maps
    @Published var Category : String? //From Maps?
    @Published var CustomName : String? //(Optional) Entered by user
    @Published var URL : String? //From Maps
    @Published var PhoneNumber : String? //From Maps
    @Published var UserNotes : String? //(Optional) Entered by user
    
    //Custom location information (currently for testing purposes)
    @Published var latitude : Double?
    @Published var longitude : Double?
    
    //Itinerary Specific Data (only used when added to itinerary)
    @Published var StartDateTime : Date?
    @Published var EndDateTime : Date?
    
    //Maps Location Item Initializer:
    
    //@TODO: Tweak this and re-implement once a decision has been made on the best way to store indexed location data.
    
//    init(addedBy: String, indexedLocation : MKMapItem) {
//
//        self.AddedBy = addedBy
//        //self.IndexedLocation = indexedLocation
//        self.Address = indexedLocation.placemark
//    }
    
    
    //Itinerary Entry Initializer:
    init(customName: String, addedBy: String, startDateTime : Date, endDateTime : Date? = nil) {
        
        self.AddedBy = addedBy
        self.CustomName = customName
        self.StartDateTime = startDateTime
        self.EndDateTime = endDateTime
    }
    
    //Dummy Data Initializer:
    init() {
        
        self.AddedBy = "Patrick"
        self.DummyAddress = "135 13th Avenue SW \nCalgary, Alberta \nT2R 0W8"
        self.Name = "Home"
        self.Category = "Apartment Building"
        self.URL = "http://www.google.ca"
        self.PhoneNumber = "403-990-3791"
        self.UserNotes = "I live here. It's a nice place with cats and the things I own."
        self.latitude = 51.040290
        self.longitude = -114.065480
        
    }
}
