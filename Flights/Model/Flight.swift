//
//  Flight.swift
//  Flights
//
//  Created by Dominic Philip on 2/10/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

struct Flight: Codable {

    var airline: String
    var flightNumber: String

    var status: String
    var timeLeft: String

    var departureICAOCode: String
    var arrivalICAOCode: String

    var departureCity: String
    var arrivalCity: String

    var departureDate: String
    var departureTime: String

    var departureTerminal: String
    var departureGate: String

    var arrivalDate: String
    var arrivalTime: String

    var arrivalTerminal: String
    var arrivalGate: String

    var altitude: String
    var speed: String
    var location: String
    var direction: String

    var updatedDate: String
    var updatedTime: String
    
    var enRoute: String

    var show: Bool

//    // MARK: Geography
//    var latitude: Double
//    var longitude: Double
//    var altitude: Double
//    var direction: Int
//
//    // MARK: Speed
//    var horizontal: Double
//    var vertical: Double
//
//    // MARK: Departure
//    var departureIATACode: String
//    var departureICAOCode: String
//
//    // MARK: Arrival
//    var arrivalIATACode: String
//    var arrivalICAOCode: String
//
//    // MARK: Aircraft
//    var aircraftICAOCode: String
//
//    // MARK: Flight
//    var flightIATACode: String
//    var flightICAOCode: String
//
//    // MARK: System
//    var lastUpdate: String
//
//    // MARK: Status
//    var status: String

}
