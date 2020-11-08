//
//  ItemInfoView.swift
//  Group Travel Planner
//
//  Created by Patrick Willmann on 2020-11-07.
//

import SwiftUI

struct ItemInfoView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Image("RestaurantIcon")
                .padding(.all, 20.0)
                VStack(alignment: .leading) {
                    Text("Restaurant Biscotte")
                    .font(.title)
                    Text("French")
                    .font(.subheadline)
            }
            .padding(.vertical)
            Spacer()
            }
        Spacer()
        }
    }
}

struct ItemInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfoView()
    }
}
