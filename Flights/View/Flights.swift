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
    
    @State private var didClickAddFlight = false
    @State private var show = false
    
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
                .padding(paddingSize(paddingAmount: .title))
                
                FlightCard()
                    .cornerRadius(14, antialiased: true)
                    .shadow(color: shadowColor(), radius: 12, y: 6)
                    .padding(paddingSize(paddingAmount: .card))
                Spacer()
            }
        }
    }
    
    private func paddingSize(paddingAmount: PaddingAmount) -> EdgeInsets {
        switch (UIDevice.current.userInterfaceIdiom) {
        case .pad:
            switch (paddingAmount) {
            case .title:
                return EdgeInsets(top: 48, leading: 48, bottom: 0, trailing: 48)
            case .card:
                return EdgeInsets(top: 12, leading: 48, bottom: 0, trailing: 48)
            }
        case .phone:
            switch (paddingAmount) {
            case .title:
                return EdgeInsets(top: 48, leading: 24, bottom: 0, trailing: 24)
            case .card:
                return EdgeInsets(top: 12, leading: 24, bottom: 0, trailing: 24)
            }
        default:
            return EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16)
        }
    }
    
    private func shadowColor() -> Color {
        if (colorScheme == .light) {
            return Color(UIColor.systemGray4)
        }
        return Color("backgroundColor")
    }
    
}


struct FlightsPreview : PreviewProvider {
    static var previews: some View {
        Flights()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


enum PaddingAmount {
    case title
    case card
}
