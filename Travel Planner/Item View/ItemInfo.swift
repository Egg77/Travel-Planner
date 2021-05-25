//
//  ItemInfo.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-29.
//

import SwiftUI

struct ItemInfo: View {
    
    //Remove the optional once you figure out how to initialize this:
    @EnvironmentObject var item : ItemClass
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Address")
                .font(.caption)
            Text(item.DummyAddress ?? "BLANK")
                .font(.body)
                .lineLimit(/*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
            Text("\n")
                .font(.caption)
            Text("Website")
                .font(.caption)
                .lineLimit(1)
            Text(item.URL ?? "None")
                .font(.body)
            Text("\n")
                .font(.caption)
            Text("Phone Number")
                .font(.caption)
                .lineLimit(1)
            Text(item.PhoneNumber ?? "None")
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
