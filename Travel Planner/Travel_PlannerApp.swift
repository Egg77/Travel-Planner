//
//  Travel_PlannerApp.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-07.
//

import SwiftUI

@main
struct Travel_PlannerApp: App {
    
    init() {
        
        let dummyData = ItemList()
        let jsonEncoder = JSONEncoder()
        jsonEncoder.outputFormatting = .prettyPrinted
        
        //Probably need to do a for-in loop here to encode everything into a single json stream...
        
        //Figure out what type JSONEncoder returns:
//        let jsonData = nil
//
        //Figure out how to make ItemList Class conform to Sequence Protocol:
//        for item in dummyData {
//            let jsonData = try! jsonEncoder.encode(item)
//        }
        
        

//        print(String(data: jsonData, encoding: .utf8)!)
    }
    
    var body: some Scene {
        WindowGroup {
            ItemViewMain()
        }
    }
}
