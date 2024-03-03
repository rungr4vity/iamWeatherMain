//
//  CoinRowView.swift
//  iamWeather
//
//  Created by Frank Martin on 20/02/24.
//

import SwiftUI

struct CoinRowView: View {
    
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing:0) {
            
            firstText
            
            Circle()
                .frame(width: 30,height: 30)
            
            Text(DeveloperProvider.instance.coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading,6)
                .foregroundStyle(
                    LinearGradient(
                            colors: [.teal, .indigo],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                )
            
            
            Spacer()
            if showHoldingsColumn {
                ifview
            }
            lastcolumn
        }
        .font(.subheadline)
    }
}

extension CoinRowView {
    
    private var firstText: some View {
        Text("\(DeveloperProvider.instance.coin.rank)")
            .foregroundStyle(
                LinearGradient(
                        colors: [.teal, .indigo],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .font(.caption)
            .frame(minWidth: 30)
    }
    
    private var ifview: some View {
        VStack (alignment: .trailing) {
            Text(DeveloperProvider.instance.coin.currentHoldingValue.asCurrencyWith6Decimals())
                .bold()
            Text((DeveloperProvider.instance.coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundStyle(
            LinearGradient(
                    colors: [.teal, .indigo],
                    startPoint: .top,
                    endPoint: .bottom
                )
        )
        .frame(width: UIScreen.main.bounds.width / 3.5)
    }
    
    
    private var lastcolumn: some View {
        VStack(alignment:.trailing){
            Text(DeveloperProvider.instance.coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(
                    LinearGradient(
                            colors: [.teal, .indigo],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                )
            Text(DeveloperProvider.instance.coin.athChangePercentage?.asPercentageString() ?? "0.00 %")
                .foregroundStyle(
                    LinearGradient(
                            colors: [.teal, .indigo],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                )
        }
    }
}

#Preview {
    CoinRowView(showHoldingsColumn: true)
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.light)
}
