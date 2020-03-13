//
//  FlightMapCardDismiss.swift
//  Flights
//
//  Created by Dominic Philip on 3/10/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightMapCardDismiss: View {

    @Binding var show: Bool

    var body: some View {
        Button(action: {
            self.show = false
        }) {
            Image(systemName: "xmark.circle.fill")
                .font(.title)
                .foregroundColor(Color(UIColor.secondaryLabel))
                .opacity(show ? 1 : 0)

        }
    }

}
