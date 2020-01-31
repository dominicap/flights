//
//  FlightsView.swift
//  Flights
//
//  Created by Dominic Philip on 1/30/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightsView: View {
    var body: some View {
        NavigationView {
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
                		
                .navigationBarTitle("Flights")
                .navigationBarItems(trailing: addFlightButton)
        }
    }
    
    var addFlightButton: some View {
        return Button(action: {
            print("Adding a Flight...")
        }) {
            if UITraitCollection.current.userInterfaceStyle == .light {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(.black)
            }
            else if UITraitCollection.current.userInterfaceStyle == .dark {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}
