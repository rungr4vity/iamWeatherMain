//
//  CircleButton.swift
//  iamWeather
//
//  Created by Frank Martin on 16/02/24.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .frame(width:50, height: 50)
            .background(
                    Circle()
                        .foregroundColor(.white)
                                           
            )
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:10, y:10)
            .padding()
    }
}

#Preview {
    
    Group{
        CircleButton(iconName: "heart.fill")
            .padding()
            .previewLayout(.sizeThatFits)
        
        CircleButton(iconName: "heart.fill")
            .padding()
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
    
}
