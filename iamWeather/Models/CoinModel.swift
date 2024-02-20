//
//  CoinModel.swift
//  iamWeather
//
//  Created by Frank Martin on 19/02/24.
//

import Foundation

struct CoinModel:Identifiable,Codable {
        let id, symbol, name: String
        let image: String
        let currentPrice: Double
        let marketCap, marketCapRank, fullyDilutedValuation: Double?
        let totalVolume, high24H, low24H: Double?
        let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
        let circulatingSupply, totalSupply, maxSupply, ath: Double?
        let athChangePercentage: Double?
        let athDate: String?
        let atl, atlChangePercentage: Double?
        let atlDate: String?
        let lastUpdated: String?
        let sparklineIn7D: SparklineIn7D?
        let currentHoldings: Double?
    
    
        enum CodingKeys:String,CodingKey {
            case id,symbol,name,image
            case currentPrice  = "current_price"
            case marketCapRank = "market_cap_rank"
            case fullyDilutedValuation = "fully_diluted_valuation"
            case totalVolume = "total_volume"
            case high24H = "high_24h"
            case low24H = "low_24h"
            case priceChange24H = ""
            case priceChangePercentage24H = "price_change_percentage24h"
            case marketCapChange24H = "market_cap_change24h"
            case marketCapChangePercentage24H = "market_cap_change_percentage24h"
            case circulatingSupply = "circulating_supply"
            case totalSupply = "total_supply"
            case maxSupply = "max_supply"
            case ath
            case athChangePercentage = "ath_change_percentage"
            case athDate = "ath_date"
            case atl
            case atlChangePercentage = "atl_change_percentage"
            case atlDate = "atl_date"
            case lastUpdated = "last_updated"
            case sparklineIn7D = "sparkline_in_7d"
            case currentHoldings
            
        }
    
    func updateCoinModels(ammount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, currentHoldings: currentHoldings)
    }
    
    var currentHoldingValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}


struct SparklineIn7D:Codable {
        let price: [Double]?
    }

    

