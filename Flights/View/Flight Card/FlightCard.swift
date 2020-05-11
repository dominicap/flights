//
//  FlightCard.swift
//  Flights
//
//  Created by Dominic Philip on 2/6/20.
//  Copyright © 2020 Dominic Philip. All rights reserved.
//

import SwiftUI


struct FlightCard: View {

    @Environment(\.colorScheme) var colorScheme: ColorScheme

    @GestureState private var movement = DragState.inactive

    @Binding var show: Bool

    @State private var position = Position.down

    let settings = Settings()

    let flight: Flight

    var body: some View {

        let drag = DragGesture()
            .updating(self.$movement) { drag, state, translation in
                state = .dragging(translation: drag.translation)
        }
        .onEnded(onDragEnded)

        return ZStack {
            FlightMap()
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(show ? 0 : 14, antialiased: true)
                .frame(width: show ? UIScreen.main.bounds.width : UIScreen.main.bounds.width - settings.frameSize(), height: show ? UIScreen.main.bounds.height : 368)
                .blur(radius: position == Position.down ? 0 : 6)

            VStack {
                HStack {
                    Spacer()
                    FlightMapDismiss(show: $show)
                        .padding(EdgeInsets(top: 48, leading: 0, bottom: 0, trailing: 24))
                        .blur(radius: position == Position.down ? 0 : 6)
                        .disabled(position == Position.down ? false : true)
                }
                Spacer()
            }

            GeometryReader { geometry in
                FlightInfo(show: self.$show, flight: self.flight)
                    .cornerRadius(14, antialiased: true)
                    .shadow(color: self.settings.shadowColor(self.colorScheme), radius: 12, y: 6)
                    .offset(y: self.offsetAmount())
                    .frame(maxWidth: self.show ? .infinity : UIScreen.main.bounds.width - self.settings.frameSize(), maxHeight: 368)
                    .gesture(self.show ? drag : nil)
                    .onTapGesture { self.show = true }
            }
        }
    }

}


extension FlightCard {

    func offsetAmount() -> CGFloat {
        if show {
            if ((UIScreen.main.bounds.height - (position.rawValue - movement.translation.height)) <= (UIScreen.main.bounds.height - Position.up.rawValue)) {
                return UIScreen.main.bounds.height - Position.up.rawValue
            }
            return UIScreen.main.bounds.height - (position.rawValue - movement.translation.height)
        }
        return 0
    }

    func onDragEnded(drag: DragGesture.Value) {

        let direction = drag.predictedEndLocation.y - drag.location.y
        let location = (UIScreen.main.bounds.height - position.rawValue) + drag.translation.height

        let above: Position
        let below: Position

        let closest: Position

        if location <= (UIScreen.main.bounds.height - Position.center.rawValue) {
            above = .up
            below = .center
        }
        else {
            above = .center
            below = .down
        }

        if (location - (UIScreen.main.bounds.height - above.rawValue)) < ((UIScreen.main.bounds.height - below.rawValue) - location) {
            closest = above
        } else {
            closest = below
        }

        if direction > 0 {
            self.position = below
        }
        else if direction < 0 {
            self.position = above
        }
        else {
            self.position = closest
        }

    }

}

