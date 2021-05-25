//
//  NameViewToggle.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-31.
//

import SwiftUI

struct NameViewToggle: View {
    
    //State Properties:
    @State var tripName = "Paris Trip"
    
    var body: some View {
        HStack{
            Text(tripName)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Spacer()
            ViewToggle()
                .padding(.all, 10)
                .padding(.trailing)
        }
    }
}

struct NameViewToggle_Previews: PreviewProvider {
    static var previews: some View {
        NameViewToggle()
    }
}
