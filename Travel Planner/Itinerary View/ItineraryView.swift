//
//  ItineraryView.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-17.
//

import SwiftUI

struct ItineraryView: View {
    
    var body: some View {
        VStack{
            NavBarBurger()
            NameViewToggle()
            //Scrolling list of items here
            ListItem()
                .padding(.horizontal)
            Spacer()
        }
        
    }
}

struct ItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItineraryView()
    }
}
