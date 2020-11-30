//
//  ItemInfoView.swift
//  Group Travel Planner
//
//  Created by Patrick Willmann on 2020-11-07.
//

import SwiftUI

struct ItemInfoView: View {
    var body: some View {
        //Main icon, title, category
        VStack(alignment: .leading){
            ItemViewHeader()
            ItemInfo()
                .padding(.leading, 83.0)
        Spacer()
        }
    }
}

struct ItemInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemInfoView()
    }
}
