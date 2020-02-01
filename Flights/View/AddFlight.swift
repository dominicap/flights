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
    
    var add: some View {
        Button(action: {
            // TODO: Confirm and Add Flight
        }) {
            Text("Add")
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
            NavigationView {
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarItems(leading: cancel)
            }
            VStack(alignment: .center) {
                Text("Add a Flight")
                    .bold()
                    .font(.largeTitle)
            }
        }
    }
 
}
