//
//  FlightCardDepartureArrival.swift
//  Flights
//
//  Created by Dominic Philip on 2/25/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightCardDepartureArrival: View {

    let flight: Flight

    var departureTitle: some View {
        Text("DEPARTURE")
            .font(.system(size: 15))
            .fontWeight(.bold)
            .multilineTextAlignment(.leading)
    }

    var arrivalTitle: some View {
        Text("ARRIVAL")
            .font(.system(size: 15))
            .fontWeight(.bold)
            .multilineTextAlignment(.trailing)
    }

    var departureArrivalTitle: some View {
        HStack {
            departureTitle
            Spacer()
            arrivalTitle
        }
    }

    var timeTitle: some View {
        Text("TIME")
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var terminalTitle: some View {
        Text("TERMINAL")
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var gateTitle: some View {
        Text("GATE")
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var timeTerminalGateTitle: some View {
        VStack(alignment: .center, spacing: 21) {
            timeTitle
            terminalTitle
            gateTitle
        }
    }

    var flightDepartureDate: some View {
        Text(flight.departureDate.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightDepartureTime: some View {
        Text(flight.departureTime.uppercased())
            .font(.system(size: 13))
            .fontWeight(.regular)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightDepartureTerminal: some View {
        Text(flight.departureTerminal.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightDepartureGate: some View {
        Text(flight.departureGate.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var departureDateTime: some View {
        VStack(alignment: .leading) {
            flightDepartureDate
            flightDepartureTime
        }
    }

    var departureTerminalGate: some View {
        VStack(alignment: .leading, spacing: 21) {
            flightDepartureTerminal
            flightDepartureGate
        }
    }

    var departure: some View {
        VStack(alignment: .leading, spacing: 5.25) {
            departureDateTime
            departureTerminalGate
        }
    }

    var flightArrivalDate: some View {
        Text(flight.arrivalDate.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightArrivalTime: some View {
        Text(flight.arrivalTime.uppercased())
            .font(.system(size: 13))
            .fontWeight(.regular)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightArrivalTerminal: some View {
        Text(flight.arrivalTerminal.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightArrivalGate: some View {
        Text(flight.arrivalGate.uppercased())
            .font(.system(size: 13))
            .fontWeight(.medium)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var arrivalDateTime: some View {
        VStack(alignment: .trailing) {
            flightArrivalDate
            flightArrivalTime
        }
    }

    var arrivalTerminalGate: some View {
        VStack(alignment: .trailing, spacing: 21) {
            flightArrivalTerminal
            flightArrivalGate
        }
    }

    var arrival: some View {
        VStack(alignment: .trailing, spacing: 5.25) {
            arrivalDateTime
            arrivalTerminalGate
        }
    }

    var body: some View {
        VStack(spacing: 12) {
            departureArrivalTitle
            VStack(spacing: 36) {
                ZStack {
                    HStack {
                        departure
                        Spacer()
                        arrival
                    }
                    timeTerminalGateTitle
                }
            }
        }
    }

}

//struct FlightCardDepartureArrival_Previews: PreviewProvider {
//    static var previews: some View {
//        FlightCardDepartureArrival(flight: flights.first)
//    }
//}
