//
//  AppDelegate.swift
//  Flights
//
//  Created by Dominic Philip on 1/30/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import UIKit

import SwiftUI


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let flightOne = Flight(airline: "Emirates Airlines", flightNumber: "EK 231", status: "ON TIME", onTime: true, timeLeft: "ARRIVES IN 10 HRS", departureICAOCode: "IAD", arrivalICAOCode: "DXB", departureCity: "WASHINGTON DC", arrivalCity: "DUBAI", departureDate: "Wed, Feb 8", departureTime: "10:00 AM", departureTerminal: "Terminal 1", departureGate: "Gate A", arrivalDate: "Thurs, Feb 9", arrivalTime: "10:00 AM", arrivalTerminal: "Terminal 3", arrivalGate: "Gate D", altitude: "10972 Meters", speed: "900 KMPH", location: "ATLANTIC OCEAN", direction: "72 DEG", updatedDate: "Wed, Feb 9", updatedTime: "1:00 AM", enRoute: "EN-ROUTE", show: false)

        let flightTwo = Flight(airline: "All Nippon Airlines", flightNumber: "NH 7", status: "DELAYED", onTime: false, timeLeft: "LEAVES IN 2 HRS", departureICAOCode: "SFO", arrivalICAOCode: "NRT", departureCity: "SAN FRANCISCO", arrivalCity: "TOKYO", departureDate: "Sun, Mar 8", departureTime: "12:00 PM", departureTerminal: "Terminal INTL", departureGate: "Gate G13", arrivalDate: "Mon, Mar 9", arrivalTime: "3:20 PM", arrivalTerminal: "Terminal 5", arrivalGate: "Gate E6", altitude: "9456 Meters", speed: "952 KMPH", location: "PACIFIC OCEAN", direction: "102 DEG", updatedDate: "Sun, Mar 8", updatedTime: "11:00 AM", enRoute: "DELAYED", show: false)

        let flightThree = Flight(airline: "British Airways", flightNumber: "BA 257", status: "ON TIME", onTime: true, timeLeft: "ARRIVES IN 7 HRS", departureICAOCode: "LHR", arrivalICAOCode: "DEL", departureCity: "LONDON", arrivalCity: "NEW DELHI", departureDate: "Fri, Mar 13", departureTime: "6:45 PM", departureTerminal: "Terminal 5", departureGate: "Gate C54", arrivalDate: "Sat, Mar 14", arrivalTime: "8:15 AM", arrivalTerminal: "Terminal T3", arrivalGate: "Gate 10", altitude: "11456 Meters", speed: "987 KMPH", location: "AFGHANISTAN", direction: "67 DEG", updatedDate: "Fri, Mar 13", updatedTime: "11:30 PM", enRoute: "ON TIME", show: false)

        flights.append(flightOne)
        flights.append(flightTwo)
        flights.append(flightThree)

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

