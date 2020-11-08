//
//  ItemView.swift
//  Group Travel Planner
//
//  Created by Patrick Willmann on 2020-11-07.
//

import SwiftUI

struct ItemViewMain: View {
    var body: some View {
        VStack{
            MapView()
                .edgesIgnoringSafeArea(.top)
            ItemInfoView()
                .frame(height: 500, alignment: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemViewMain()
    }
}
