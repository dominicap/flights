//
//  FlightsView.swift
//  Flights
//
//  Created by Dominic Philip on 1/30/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct Flights: View {
    
    @State private var didClickAddFlight = false
    
    var addFlight: some View {
        Button(action: {
            self.didClickAddFlight.toggle()
        }) {
            Image(systemName: "plus.circle.fill")
                .font(Font.title.weight(.light))
                .foregroundColor(Color("systemIconColor"))
        }
        .sheet(isPresented: $didClickAddFlight) {
            AddFlight()
        }
        
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                    
                    .navigationBarTitle(Text("Flights"))
                    .navigationBarItems(trailing: addFlight)
            }
        }
    }
    
}
