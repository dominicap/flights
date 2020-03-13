//
//  FlightCardDrag.swift
//  Flights
//
//  Created by Dominic Philip on 3/8/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI


enum DragState {

    case inactive
    case dragging(translation: CGSize)

    var translation: CGSize {
        switch self {
        case .inactive:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }

    var isDragging: Bool {
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }

}


enum Position: CGFloat {

    case up = 463
    case center = 263
    case down = 107

}
