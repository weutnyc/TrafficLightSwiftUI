//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Anton on 02.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .blue, opacity: 0.3)
    }
}
