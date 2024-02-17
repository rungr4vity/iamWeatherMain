//
//  ContentView.swift
//  iamWeather
//
//  Created by Frank Martin on 16/12/23.
//

import SwiftUI




struct ContentView: View {
    

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("OK")
                .id("txtOne")
            
            Button("Execute") {

            }
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
