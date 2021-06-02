//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton on 02.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLight = ColorCircle(color: .red, alpha: 0.3)
    @State private var yellowLight = ColorCircle(color: .yellow, alpha: 0.3)
    @State private var greenLight = ColorCircle(color: .green, alpha: 0.3)
    
    @State private var alphaPoints = alphaPoint.red
    @State private var buttonText = "Start!"
    
    private let on: Double = 1
    private let off = 0.3
    
    enum alphaPoint {
        case red
        case yellow
        case green
    }
    
    func work() {
        buttonText = "Next!"
        
        switch alphaPoints {
        case .red:
            redLight.alpha = on
            greenLight.alpha = off
            alphaPoints = .yellow
        case .yellow:
            yellowLight.alpha = on
            redLight.alpha = off
            alphaPoints = .green
        case .green:
            greenLight.alpha = on
            yellowLight.alpha = off
            alphaPoints = .red
        }
    }
    
    var body: some View {
        VStack {
            VStack {
                redLight
                yellowLight
                greenLight
            }
            Spacer()
            Button(action: { work() }) {
                Text("\(buttonText)")
                    .font(.title)
                    .foregroundColor(.red)
            }
            .padding(.bottom, +50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
