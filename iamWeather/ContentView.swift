//
//  ContentView.swift
//  iamWeather
//
//  Created by Frank Martin on 16/12/23.
//

import SwiftUI




struct ContentView: View {
    
    var _center: Center
    var _upClass = upClass(item: "none")

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(_upClass.getItem())
                .id("txtOne")
            
            Button("Execute") {
                
                _center.item = "from the button"
                
                print(_center.item)
            }
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView(_center: Center(item: "my second item"))
}
