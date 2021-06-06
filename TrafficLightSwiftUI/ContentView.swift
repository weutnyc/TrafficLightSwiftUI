//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton on 02.06.2021.
//

import SwiftUI

enum AlphaPoint {
    case red, yellow , green
}

struct ContentView: View {
    
    @State private var alphaPoints = AlphaPoint.red
    @State private var buttonText = "Start!"
    
    private func work() {
        buttonText = "Next!"
        
        switch alphaPoints {
        case .red: alphaPoints = .yellow
        case .yellow: alphaPoints = .green
        case .green: alphaPoints = .red
        }
    }
}

extension ContentView {
    var body: some View {
        VStack {
            VStack {
                ColorCircle(color: .red, opacity: alphaPoints == .red ? 1 : 0.3)
                ColorCircle(color: .yellow, opacity: alphaPoints == .yellow ? 1 : 0.3)
                ColorCircle(color: .green, opacity: alphaPoints == .green ? 1 : 0.3)
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
