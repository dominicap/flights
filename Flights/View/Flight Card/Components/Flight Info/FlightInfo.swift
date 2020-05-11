//
//  FlightInfo.swift
//  Flights
//
//  Created by Dominic Philip on 3/10/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI


struct FlightInfo: View {

    @Binding var show: Bool

    let flight: Flight

    var body: some View {
        ZStack {
            Color("cardColor")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 18) {

                VStack(spacing: 3) {
                    Spacer()
                    FlightMapHandle()
                        .opacity(self.show ? 1 : 0)
                    FlightInfoHeader(flight: flight)
                }


                VStack(spacing: 36) {
                    Divider()
                    FlightInfoAirportCodes(flight: flight)
                    Divider()
                }

                FlightInfoDepartureArrival(flight: flight)

                if self.show {
                    Group {
                        Divider()

                        FlightInfoStatistics(flight: flight)

                        Divider()

                        FlightInfoUpdateStatus(flight: flight)

                        Divider()
                    }
                    .opacity(self.show ? 1 : 0)
                }

                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
        }
    }

}
