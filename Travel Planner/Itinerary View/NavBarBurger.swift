//
//  NavBar.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-31.
//

import SwiftUI

struct NavBarBurger: View {
    var body: some View {
        HStack{
            Burger()
                .padding(.leading, 10)
            Spacer()
        }
    }
}

struct NavBarBurger_Previews: PreviewProvider {
    static var previews: some View {
        NavBarBurger()
    }
}
