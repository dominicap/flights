//
//  Flight.swift
//  Flights
//
//  Created by Dominic Philip on 2/10/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

struct Flight: Codable {

    // MARK: Geography
    var latitude: Double
    var longitude: Double
    var altitude: Double
    var direction: Int

    // MARK: Speed
    var horizontal: Double
    var vertical: Double

    // MARK: Departure
    var departureIATACode: String
    var departureICAOCode: String

    // MARK: Arrival
    var arrivalIATACode: String
    var arrivalICAOCode: String

    // MARK: Aircraft
    var aircraftICAOCode: String

    // MARK: Flight
    var flightIATACode: String
    var flightICAOCode: String

    // MARK: System
    var lastUpdate: String

    // MARK: Status
    var status: String

}
