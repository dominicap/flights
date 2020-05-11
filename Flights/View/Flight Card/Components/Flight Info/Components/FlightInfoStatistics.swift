//
//  FlightInfoStatistics.swift
//  Flights
//
//  Created by Dominic Philip on 2/25/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightInfoStatistics: View {

    let flight: Flight

    var altitudeTitle: some View {
        Text("ALTITUDE".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var flightAltitude: some View {
        Text(flight.altitude.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var speedTitle: some View {
        Text("SPEED".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var flightSpeed: some View {
        Text(flight.speed.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var locationTitle: some View {
        Text("LOCATION".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var flightLocation: some View {
        Text(flight.location.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var directionTitle: some View {
        Text("DIRECTION".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var flightDirection: some View {
        Text(flight.direction.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var altitude: some View {
        VStack(alignment: .leading, spacing: 3) {
            altitudeTitle
            flightAltitude
        }
    }

    var speed: some View {
        VStack(alignment: .trailing, spacing: 3) {
            speedTitle
            flightSpeed
        }
    }

    var location: some View {
        VStack(alignment: .leading, spacing: 3) {
            locationTitle
            flightLocation
        }
    }

    var direction: some View {
        VStack(alignment: .trailing, spacing: 3) {
            directionTitle
            flightDirection
        }
    }

    var altitudeSpeed: some View {
        HStack {
            altitude
            Spacer()
            speed
        }
    }

    var locationDirection: some View {
        HStack {
            location
            Spacer()
            direction
        }
    }

    var body: some View {
        VStack(spacing: 16) {
            altitudeSpeed
            locationDirection
        }
    }

}


//struct FlightCardStatistics_Previews: PreviewProvider {
//    static var previews: some View {
//        FlightCardStatistics(flight: flights.first)
//    }
//}
