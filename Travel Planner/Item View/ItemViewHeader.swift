//
//  ItemViewHeader.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-29.
//

import SwiftUI

struct ItemViewHeader: View {
    var body: some View {
            HStack(alignment: .top){
                Image("RestaurantIcon")
                    .resizable()
                    .padding(.all, 20.0)
                    .frame(width: 76, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text("Restaurant Biscotte")
                        .font(.title2)
                    Text("French")
                    .font(.caption)
                }
                .padding(.vertical)
                .frame(width: 225.0, alignment: .leading)
                DateTimeButton()
                    .frame(width: 76, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ItemViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        ItemViewHeader()
    }
}
