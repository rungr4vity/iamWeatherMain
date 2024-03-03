//
//  iamWeatherApp.swift
//  iamWeather
//
//  Created by Frank Martin on 16/12/23.
//

import SwiftUI

@main
struct iamWeatherApp: App {
    
    @StateObject private var vm = CoinsViewModel()

    
    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                ContentView()
                    .navigationBarHidden(true)
                    
            }
            .environmentObject(vm)
            
        }
    }
}
