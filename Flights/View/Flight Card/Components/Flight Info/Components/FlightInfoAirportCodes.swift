//
//  FlightInfoAirportCodes.swift
//  Flights
//
//  Created by Dominic Philip on 2/25/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightInfoAirportCodes: View {

    let flight: Flight

    var departureAirportCode: some View {
        Text(flight.departureICAOCode.uppercased())
            .font(.system(size: 34))
            .fontWeight(.heavy)
            .multilineTextAlignment(.leading)
    }

    var arrivalAirportCode: some View {
        Text(flight.arrivalICAOCode.uppercased())
            .font(.system(size: 34))
            .fontWeight(.heavy)
            .multilineTextAlignment(.trailing)
    }

    var airplane: some View {
        Image(systemName: "airplane")
            .font(.system(size: 34))
            .foregroundColor(Color(UIColor.secondaryLabel))
            .multilineTextAlignment(.center)
    }

    var departureCity: some View {
        Text(flight.departureCity.uppercased())
            .font(.system(size: 13))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.secondaryLabel))
            .multilineTextAlignment(.leading)
    }

    var arrivalCity: some View {
        Text(flight.arrivalCity.uppercased())
            .font(.system(size: 13))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.secondaryLabel))
            .multilineTextAlignment(.trailing)
    }
    
    var airportCodes: some View {
        ZStack {
            HStack {
                departureAirportCode
                Spacer()
                arrivalAirportCode
            }
            airplane
        }
    }

    var cities: some View {
        HStack {
            departureCity
            Spacer()
            arrivalCity
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            airportCodes
            cities
        }
    }

}
//
//struct FlightCardAirportCodes_Previews: PreviewProvider {
//    static var previews: some View {
//        FlightCardAirportCodes(flight: flights.first)
//    }
//}
