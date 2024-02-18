//
//  CircleButtonAnimation.swift
//  iamWeather
//
//  Created by Frank Martin on 18/02/24.
//

import SwiftUI

struct CircleButtonAnimation: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.easeInOut, value: animate ? 2.0 : 0.0)
            
            
    }
}

#Preview {
    CircleButtonAnimation(animate: .constant(false))
        .foregroundStyle(LinearGradient(
            colors: [.teal, .indigo],
            startPoint: .top,
            endPoint: .bottom
        ))
        .frame(width: 90,height: 90)
        
}
