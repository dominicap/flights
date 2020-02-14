//
//  AddFlight.swift
//  Flights
//
//  Created by Dominic Philip on 1/31/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

struct AddFlight: View {
    
    @Environment(\.presentationMode) var presentationMode
  
    var next: some View {
        NavigationLink(destination: Text("Continue")) {
            Text("Continue")
                .padding()
                .frame(width: 360)
                .font(Font.headline)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(12)
        }
    }
    
    var cancel: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Cancel")
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                next
            }
            .padding(.bottom, 48)
        }
    }
 
}

struct AddFlightPreview : PreviewProvider {
    static var previews: some View {
        AddFlight()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
