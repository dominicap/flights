//
//  FlightMap.swift
//  Flights
//
//  Created by Dominic Philip on 2/17/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI
import MapKit

struct FlightMap: UIViewRepresentable {

    func makeUIView(context: Context)-> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.mapType = .mutedStandard

        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 38.9531, longitude: -77.4565)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }

}

struct FlightMap_Previews: PreviewProvider {
    static var previews: some View {
        FlightMap()
    }
}
