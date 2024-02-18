//
//  HomeView.swift
//  iamWeather
//
//  Created by Frank Martin on 17/02/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    
    
    var body: some View {
        
        ZStack {
            
            Color.yellow.opacity(0.2)
                .ignoresSafeArea()
                
        
            VStack{
                
                homeHeader
                
                Spacer(minLength: 0)
            }
        }
        
        
    }
}

#Preview {
    NavigationView{
        HomeView()
            .navigationBarHidden(true)
    }
    
}


extension HomeView {
    private var homeHeader: some View {
        HStack{
            CircleButton(iconName: showPortfolio ? "plus" : "info")
                .background(
                    CircleButtonAnimation(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live prices")
                .fontWeight(.bold)
            Spacer()
            CircleButton(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
