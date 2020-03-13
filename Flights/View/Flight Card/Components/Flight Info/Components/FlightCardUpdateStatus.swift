//
//  FlightCardUpdateStatus.swift
//  Flights
//
//  Created by Dominic Philip on 2/25/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightCardUpdateStatus: View {

    let flight: Flight

    var updatedtitle: some View {
        Text("UPDATED".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var statusTitle: some View {
        Text("STATUS".uppercased())
            .font(.system(size: 13))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.secondaryLabel))
    }

    var flightUpdatedDate: some View {
        Text(flight.updatedDate.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightUpdatedTime: some View {
        Text(flight.updatedTime.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var flightStatus: some View {
        Text(flight.enRoute.uppercased())
            .font(.system(size: 11))
            .fontWeight(.semibold)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

    var updatedStatusTitle: some View {
        HStack {
            updatedtitle
            Spacer()
            statusTitle
        }
    }

    var updatedDateStatus: some View {
        HStack {
            flightUpdatedDate
            Spacer()
            flightStatus
        }
    }

    var updatedTime: some View {
        HStack {
            flightUpdatedTime
            Spacer()
        }
    }

    var updatedStatus: some View {
        VStack {
            updatedDateStatus
            updatedTime
        }
    }

    var body: some View {
        VStack(spacing: 3) {
            updatedStatusTitle
            updatedStatus
        }
    }

}


//struct FlightCardUpdateStatus_Previews: PreviewProvider {
//    static var previews: some View {
//        FlightCardUpdateStatus(flight: flights.first)
//    }
//}
