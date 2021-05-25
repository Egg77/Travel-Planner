//
//  Burger.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-31.
//

import SwiftUI

struct Burger: View {
    var body: some View {
        Button(action: {
            //DO THINGS HERE YES
            //Code to open slide-over menu
            
        }, label: {
            Image("Hamburger")
                .resizable()
                .frame(minWidth: 20, idealWidth: 30, maxWidth: 40, minHeight: 20, idealHeight: 30, maxHeight: 40)
                .padding(.all, 10)
        })
        
    }
}

struct Burger_Previews: PreviewProvider {
    static var previews: some View {
        Burger()
    }
}
