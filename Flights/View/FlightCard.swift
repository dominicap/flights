//
//  FlightCard.swift
//  Flights
//
//  Created by Dominic Philip on 2/6/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightCard: View {
    
    @State var statusButtonText = "ON TIME"
    
    var flightHeader: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Emirates Airlines".capitalized)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text("EK 231".uppercased())
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(Color(UIColor.secondaryLabel))
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            Button(action: {
                if (self.statusButtonText == "ON TIME") {
                    withAnimation(.easeIn) {
                        self.statusButtonText = "ARRIVES IN 10 HRS"
                    }
                } else {
                    withAnimation(.easeOut) {
                        self.statusButtonText = "ON TIME"
                    }
                }
            }) {
                Text(self.statusButtonText)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(14)
            }
        }
    }
    
    var airportCodes: some View {
        ZStack {
            HStack {
                Text("IAD".uppercased())
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("DXB".uppercased())
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.trailing)
            }
            Image(systemName: "airplane")
                .font(.system(size: 34))
                .foregroundColor(Color(UIColor.secondaryLabel))
                .multilineTextAlignment(.center)
        }
    }
    
    var cities: some View {
        HStack {
            Text("WASHINGTON DC".uppercased())
                .font(.system(size: 12))
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.secondaryLabel))
                .multilineTextAlignment(.leading)
            Spacer()
            Text("DUBAI".uppercased())
                .font(.system(size: 12))
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.secondaryLabel))
                .multilineTextAlignment(.trailing)
        }
    }
    
    var airportCodesCitiesHeader: some View {
        VStack(spacing: 36) {
            Divider()
            VStack(spacing: 0) {
                airportCodes
                cities
            }
            Divider()
        }
    }
    
    var departureArrivalHeader: some View {
        HStack {
            Text("departure".uppercased())
                .font(.system(size: 15))
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            Spacer()
            Text("arrival".uppercased())
                .font(.system(size: 15))
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
        }
    }
    
    var timeTerminalGateHeader: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("TIME".uppercased())
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(Color(UIColor.secondaryLabel))
            Text("TERMINAL".uppercased())
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(Color(UIColor.secondaryLabel))
            Text("GATE".uppercased())
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
    
    var departureInformation: some View {
        VStack(alignment: .leading, spacing: 6.5) {
            VStack(alignment: .leading) {
                Text("WED, FEB 8".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
                Text("10:00 AM".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
            }
            VStack(alignment: .leading, spacing: 18.5) {
                Text("TERMINAL A".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
                Text("GATE 24".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
            }
        }
    }
    
    var arrivalInformation: some View {
        VStack(alignment: .trailing, spacing: 6.5) {
            VStack(alignment: .trailing) {
                Text("WED, FEB 9".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
                Text("10:00 AM".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
            }
            VStack(alignment: .trailing, spacing: 18.5) {
                Text("TERMINAL 3".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
                Text("GATE D".uppercased())
                    .font(.system(size: 11))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.tertiaryLabel))
            }
        }
    }
    
    var body: some View {
        ZStack {
            Color("cardColor")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 12) {
//                FlightMapView()
//                    .frame(height: 288)
                Spacer()
                
                VStack(spacing: 12) {
                    flightHeader
                    
                    airportCodesCitiesHeader
                    
                    VStack(spacing: 12) {
                        departureArrivalHeader
                        VStack(spacing: 36) {
                            ZStack {
                                HStack {
                                    departureInformation
                                    Spacer()
                                    arrivalInformation
                                }
                                timeTerminalGateHeader
                            }
//                            Divider()
                            Spacer() // just add
                        }
                    }
//                    VStack(spacing: 16) {
//                        HStack {
//                            VStack(alignment: .leading, spacing: 3) {
//                                Text("ALTITUDE".uppercased())
//                                    .font(.system(size: 13))
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color(UIColor.secondaryLabel))
//                                Text("10972 METERS".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                            }
//                            Spacer()
//                            VStack(alignment: .trailing, spacing: 3) {
//                                Text("SPEED".uppercased())
//                                    .font(.system(size: 13))
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color(UIColor.secondaryLabel))
//                                Text("900 KMPH".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                            }
//                        }
//                        HStack {
//                            VStack(alignment: .leading, spacing: 3) {
//                                Text("LOCATION".uppercased())
//                                    .font(.system(size: 13))
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color(UIColor.secondaryLabel))
//                                Text("ATLANTIC OCEAN".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                            }
//                            Spacer()
//                            VStack(alignment: .trailing, spacing: 3) {
//                                Text("DIRECTION".uppercased())
//                                    .font(.system(size: 13))
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color(UIColor.secondaryLabel))
//                                Text("72 DEG".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                            }
//                        }
//                    }
                    
                    
//                    Divider()
                    
//                    VStack(spacing: 3) {
//                        HStack {
//                            Text("UPDATED".uppercased())
//                                .font(.system(size: 13))
//                                .fontWeight(.bold)
//                                .foregroundColor(Color(UIColor.secondaryLabel))
//                            Spacer()
//                            Text("STATUS".uppercased())
//                                .font(.system(size: 13))
//                                .fontWeight(.bold)
//                                .foregroundColor(Color(UIColor.secondaryLabel))
//
//                        }
//                        VStack {
//                            HStack {
//                                Text("WED, FEB 9".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                                Spacer()
//                                Text("EN-ROUTE".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                            }
//                            HStack {
//                                Text("1:00 AM".uppercased())
//                                    .font(.system(size: 11))
//                                    .fontWeight(.semibold)
//                                    .foregroundColor(Color(UIColor.tertiaryLabel))
//                                Spacer()
//                            }
//                        }
//                    }
                }
                    .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                
//                Spacer()
            }
        }
    }
}

struct FlightCard_Previews: PreviewProvider {
    static var previews: some View {
        FlightCard()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
