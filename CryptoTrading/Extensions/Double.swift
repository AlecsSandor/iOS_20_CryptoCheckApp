//
//  Double.swift
//  CryptoTrading
//
//  Created by Alex on 2/8/24.
//

import Foundation

extension Double {
    
    ///  Converts a Double into a Currency with 2 decimal places
    ///  ```
    ///  Convert 1234.54 to $1,234.56
    ///  ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // <- default value
//        formatter.currencyCode = "usd" // <- change currency
//        formatter.currencySymbol = "$" // <- channge currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    ///  Converts a Double into a Currency as a String with 2 decimal places
    ///  ```
    ///  Convert 1234.54 to $1,234.56
    ///  ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    ///  Converts a Double into string representation
    ///  ```
    ///  Convert 1234.542 to "1234.54"
    ///  ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    ///  Converts a Double into string representation with percent symbol
    ///  ```
    ///  Convert 1234.542 to "1234.54"
    ///  ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
}
