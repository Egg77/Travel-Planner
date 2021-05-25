//
//  ViewToggle.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-02-07.
//

import SwiftUI

struct ViewToggle: View {
    
    @State var buttonAsset = "CalendarIcon"
    
    var body: some View {
        Button(action: {
            if buttonAsset == "CalendarIcon"{
                buttonAsset = "CalendarIconON"
            }
            else {
                buttonAsset = "CalendarIcon"
            }
        }, label: {
            Image(buttonAsset)
                .resizable()
                .frame(minWidth: 20, idealWidth: 30, maxWidth: 40, minHeight: 20, idealHeight: 30, maxHeight: 40)
        })
    }
}

struct ViewToggle_Previews: PreviewProvider {
    static var previews: some View {
        ViewToggle()
    }
}
