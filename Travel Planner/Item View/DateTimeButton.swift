//
//  DateTimeButton.swift
//  Travel Planner
//
//  Created by Patrick Willmann on 2020-11-29.
//

import SwiftUI

struct DateTimeButton: View {
    
    //Remove the optional once you figure out how to initialize this:
    @EnvironmentObject var item : ItemClass
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            VStack(alignment: .trailing) {
                Text("MM/DD/YY")
                    .font(.caption)
                    .foregroundColor(Color.black)
                Text("HH:MM")
                    .font(.caption2)
                    .foregroundColor(Color.black)
        }
        .frame(width: 76, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}

struct DateTimeButton_Previews: PreviewProvider {
    static var previews: some View {
        DateTimeButton()
    }
}
