//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton on 02.06.2021.
//

import SwiftUI

enum AlphaPoint {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var redLight = ColorCircle(color: .red, opacity: 0.3)
    @State private var yellowLight = ColorCircle(color: .yellow, opacity: 0.3)
    @State private var greenLight = ColorCircle(color: .green, opacity: 0.3)
    
    @State private var alphaPoints = AlphaPoint.red
    @State private var buttonText = "Start!"
    
   
    
   
    
    private func work() {
        
        
        buttonText = "Next!"
        
        let on: Double = 1
        let off = 0.3
        
        switch alphaPoints {
        case .red:
            redLight.opacity = on
            greenLight.opacity = off
            alphaPoints = .yellow
        case .yellow:
            yellowLight.opacity = on
            redLight.opacity = off
            alphaPoints = .green
        case .green:
            greenLight.opacity = on
            yellowLight.opacity = off
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
            Button(action: work) {
                Text("\(buttonText)")
                    .font(.title)
                    .foregroundColor(.red)
            }
            .padding(.bottom, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
