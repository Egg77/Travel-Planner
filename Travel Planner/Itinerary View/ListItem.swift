//
//  ListItem.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-31.
//

import SwiftUI

struct ListItem: View {
    
    
    @State var placeName = "Restaurant Biscotte"
    @State var iconAsset = "RestaurantIcon"
    
    var body: some View {
        HStack {
            Image(iconAsset)
                .padding(.horizontal)
            Text(placeName)
                .padding(.trailing)
            Spacer()
        }
        .padding(.vertical)
        .background(Color(red: 0.5, green: 0.5, blue: 0.5, opacity: 0.35))
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
