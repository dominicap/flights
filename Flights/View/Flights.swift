//
//  Flights.swift
//  Flights
//
//  Created by Dominic Philip on 1/30/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct Flights: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @State private var addFlightTapped = false
    @State var selectedFlights = flights

    let settings = Settings()

    var addFlight: some View {
        Button(action: {
            self.addFlightTapped.toggle()
        }) {
            Image(systemName: "plus.circle.fill")
                .font(Font.title.weight(.light))
                .foregroundColor(Color("systemIconColor"))
        }
        .sheet(isPresented: $addFlightTapped) {
            AddFlight()
        }
    }
    
    var body: some View {
        ZStack {
            Color("backgroundColor").edgesIgnoringSafeArea(.all)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 12) {
                    HStack {
                        Text("Flights")
                            .font(Font.largeTitle.bold())
                        Spacer()
                        addFlight
                    }
                    Divider()
                }
                .padding(settings.paddingSize(paddingAmount: .title))

                ZStack {
                    VStack(spacing: 36) {
                        ForEach(selectedFlights.indices, id: \.self) { index in
                            GeometryReader { geometry in
                                FlightCard(show: self.$selectedFlights[index].show, flight: self.selectedFlights[index])
                                    .offset(y: self.selectedFlights[index].show ? -geometry.frame(in: .global).minY : 0)
                            }
                            .frame(height: self.selectedFlights[index].show ? UIScreen.main.bounds.height : 368)
                            .frame(maxWidth: self.selectedFlights[index].show ? UIScreen.main.bounds.width : UIScreen.main.bounds.width - self.settings.frameSize(), maxHeight: 368)
                            .zIndex(self.selectedFlights[index].show ? 1 : 0)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .animation(.interpolatingSpring(stiffness: 222, damping: 24))
                }
                .padding(.bottom, 36)
            }
        }
    }
    
}


struct FlightsPreview : PreviewProvider {
    static var previews: some View {
        Flights()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}
