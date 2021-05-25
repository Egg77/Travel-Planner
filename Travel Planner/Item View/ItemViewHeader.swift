//
//  ItemViewHeader.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-29.
//

import SwiftUI

struct ItemViewHeader: View {
    
    //Remove the optional once you figure out how to initialize this:
    @EnvironmentObject var item : ItemClass
    
    var body: some View {
        HStack(alignment: .top){
                Image("RestaurantIcon")
                    .resizable()
                    .padding(.all, 20.0)
                    .frame(width: 76, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text(item.Name ?? "Blank")
                        .font(.title2)
                    Text(item.Category ?? "Blank")
                        .font(.caption)
                }
                .padding(.vertical)
                .frame(maxWidth: 225.0, alignment: .leading)
                DateTimeButton()
                    .frame(width: 76, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            //.background(Color.yellow)
    }
}

struct ItemViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        ItemViewHeader()
    }
}
