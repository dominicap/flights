//
//  Settings.swift
//  Flights
//
//  Created by Dominic Philip on 3/7/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI

var flights = [Flight]()

struct Settings {

    func shadowColor(_ colorScheme: ColorScheme) -> Color {

        if (colorScheme == .light) {
            return Color(UIColor.systemGray4)
        }
        return Color("backgroundColor")

    }

    func paddingSize(paddingAmount: PaddingAmount) -> EdgeInsets {

        switch (UIDevice.current.userInterfaceIdiom) {
        case .pad:
            switch (paddingAmount) {
            case .title:
                return EdgeInsets(top: 48, leading: 48, bottom: 40, trailing: 48)
            case .card:
                return EdgeInsets(top: 12, leading: 48, bottom: 0, trailing: 48)
            }
        case .phone:
            switch (paddingAmount) {
            case .title:
                return EdgeInsets(top: 48, leading: 24, bottom: 16, trailing: 24)
            case .card:
                return EdgeInsets(top: 12, leading: 24, bottom: 0, trailing: 24)
            }
        default:
            return EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16)
        }

    }

    func frameSize() -> CGFloat {

        switch (UIDevice.current.userInterfaceIdiom) {
        case .pad:
            return 96
        default:
            return 48
        }

    }

    enum PaddingAmount {
        case title
        case card
    }

}
