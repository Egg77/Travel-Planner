//
//  NavBar.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2021-01-17.
//

import SwiftUI

struct NavBarBack: View {
    
    var body: some View {
        HStack {
            BackButton()
                .padding(.leading, 10)
                //.background(Color.yellow)
            Spacer()
        }
        //.background(Color.yellow)
    }
}

struct NavBarBack_Previews: PreviewProvider {
    static var previews: some View {
        NavBarBack()
    }
}
