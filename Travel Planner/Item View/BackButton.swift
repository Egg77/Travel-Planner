//
//  BackButton.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-17.
//

import SwiftUI

struct BackButton: View {
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Image("Back-Button")
                .resizable()
                .frame(minWidth: 20, idealWidth: 30, maxWidth: 40, minHeight: 20, idealHeight: 30, maxHeight: 40)
                .padding(.all, 10)
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
