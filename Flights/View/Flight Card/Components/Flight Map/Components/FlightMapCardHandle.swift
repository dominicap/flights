//
//  FlightMapCardHandle.swift
//  Flights
//
//  Created by Dominic Philip on 3/2/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct FlightMapCardHandle: View {

    var body: some View {
        RoundedRectangle(cornerRadius: 14)
            .frame(width: 36, height: 6)
            .foregroundColor(Color(UIColor.tertiaryLabel))
    }

}

struct FlightMapCardHandle_Previews: PreviewProvider {
    static var previews: some View {
        FlightMapCardHandle()
    }
}
