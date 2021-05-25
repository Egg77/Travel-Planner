//
//  ItemView.swift
//  Group Travel Planner
//
//  Created by Patrick Willmann on 2020-11-07.
//

import SwiftUI

struct ItemViewMain: View {
    
    //Remove the optional once you figure out how to initialize this:
    var item = ItemClass()
    
    var body: some View {
        //Setting this spacing to zero seems to be necessary to ensure that all the elements are jammed right up next to each other
        VStack(spacing: 0){
            //Setting the ZStack alignment here determines how all the sub-items are aligned
            ZStack(alignment: .topLeading){
                MapView().environmentObject(item)
                .frame(minHeight: 250, idealHeight: 275, maxHeight: 300)
                NavBarBack().environmentObject(item)
            }
               // .edgesIgnoringSafeArea(.top)
            ItemInfoView().environmentObject(item)
            Spacer()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemViewMain()
    }
}
