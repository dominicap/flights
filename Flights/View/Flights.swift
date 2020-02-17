//
//  Flights.swift
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
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 12) {
                    VStack(spacing: 12) {
                        HStack {
                            Text("Flights")
                                .font(Font.largeTitle.bold())
                            Spacer()
                            addFlight
                        }
                        Divider()
                    }
                    .padding(paddingSize())
                    FlightCard()
                    .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                }
            }
        }
    }
    
    private func paddingSize() -> EdgeInsets {
        switch (UIDevice.current.userInterfaceIdiom) {
        case .pad:
            return EdgeInsets(top: 48, leading: 48, bottom: 0, trailing: 48)
        case .phone:
            return EdgeInsets(top: 48, leading: 24, bottom: 0, trailing: 24)
        default:
            return EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16)
        }
    }
    
}


struct FlightsPreview : PreviewProvider {
    static var previews: some View {
        Flights()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
