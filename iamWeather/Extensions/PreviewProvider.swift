//
//  PreviewProvider.swift
//  iamWeather
//
//  Created by Frank Martin on 20/02/24.
//

import Foundation
import SwiftUI


/*
extension PreviewProvider {
    
    static var dev: DeveloperProvider {
        return DeveloperProvider.instance
    }
    
}
 */



class DeveloperProvider {
    
    static let instance = DeveloperProvider()
    private init() { }
    
    let coin = CoinModel(id: "1", symbol: "BT", name: "BitCoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400", currentPrice: 99.9, marketCap: 98.9, marketCapRank: 2.2, fullyDilutedValuation: 5.4, totalVolume: 4.0, high24H: 2.0, low24H: 3.0, priceChange24H: 11.90, priceChangePercentage24H: 0.99, marketCapChange24H: 9.99, marketCapChangePercentage24H: 22.34, circulatingSupply: 12.1, totalSupply: 11.11, maxSupply: 2, ath: 2, athChangePercentage: 5, athDate: "2021-11-10T14:24:11.849Z", atl: 67.81, atlChangePercentage: 22.22, atlDate: "2021-11-10T14:24:11.849Z", lastUpdated: "2021-11-10T14:24:11.849Z",
        sparklineIn7D:SparklineIn7D(
            price: [
            49732.14536955351,
            49527.55953288175,
            49448.46336262485]), currentHoldings: 33.33)
}
