//
//  ItemInfo.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-29.
//

import SwiftUI

struct ItemInfo: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Address")
                .font(.caption)
            Text("22 Rue Desnouettes, 75015 Paris, France")
                .font(.body)
                .lineLimit(/*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
            Text("\n")
                .font(.caption)
            Text("Website")
                .font(.caption)
                .lineLimit(1)
            Text("http://www.restaurant-biscotte.com")
                .font(.body)
            Text("\n")
                .font(.caption)
            Text("Phone Number")
                .font(.caption)
                .lineLimit(1)
            Text("+33 1 45 33 22 22")
                .font(.body)
                .lineLimit(1)
        }
    }
}

struct ItemInfo_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfo()
    }
}
