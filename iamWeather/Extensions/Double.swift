//
//  Double.swift
//  iamWeather
//
//  Created by Frank Martin on 22/02/24.
//

import Foundation


extension Double {
    
    
    /// Convert a Double into a Currency with 2-6 decimal places
    /// ```
    /// Convert 123456.56 to $1,234.56
    /// Convert 12.345656 to $12.3456
    /// Convert 0.123456  to $0.123456
    /// ```
    
    private var currentFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //formatter.locale = .current
        //formatter.currencyCode = "USD"
        //formatter.currencySymbol = "$"
        
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Convert a Double into a Currency with 2-6 decimal places
    /// ```
    /// Convert 123456.56 to $1,234.56
    /// Convert 12.345656 to $12.3456
    /// Convert 0.123456  to $0.123456
    /// ```
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currentFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double into a String representation
    /// ```
    /// Convert 1.234 to "1.234"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f",self)
    }
    
    /// Convert a Double into a String representation with percent symbol
    /// ```
    /// Convert 1.234 to "1.23 %"
    /// ``
    ///
    func asPercentageString() -> String {
        return asNumberString() + " %"
    }
}
