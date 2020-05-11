//
//  FlightInfoHeader.swift
//  Flights
//
//  Created by Dominic Philip on 2/25/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightInfoHeader: View {
    
    @State private var statusIsShowing = true
    @State private var statusDescription = ""

    let flight: Flight
    
    func setStatusButtonLabel() {
        if (self.statusIsShowing) {
            withAnimation(.easeIn) {
                self.statusDescription = flight.timeLeft
                self.statusIsShowing.toggle()
            }
        }
        else {
            withAnimation(.easeOut) {
                self.statusDescription = flight.status
                self.statusIsShowing.toggle()
            }
        }
    }
    
    var airline: some View {
        Text(flight.airline)
            .font(.system(size: 17))
            .fontWeight(.bold)
            .multilineTextAlignment(.leading)
    }
    
    var flightNumber: some View {
        Text(flight.flightNumber.uppercased())
            .font(.system(size: 15))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
            .multilineTextAlignment(.leading)
    }
    
    var airlineFlightNumber: some View {
        VStack(alignment: .leading) {
            airline
            flightNumber
        }
    }
    
    var status: some View {
        Button(action: {
            self.setStatusButtonLabel()
        }) {
            Text(self.statusDescription)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                .foregroundColor(Color.white)
                .background(flight.onTime ? Color.green : Color.red)
                .cornerRadius(14)
        }
        .onAppear { self.statusDescription = self.flight.status }
    }
    
    var body: some View {
        HStack {
            airlineFlightNumber
            Spacer()
            status
        }
    }
    
}

//
//struct FlightCardHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        FlightCardHeader(flight: flights.first)
//    }
//}
