//
//  Converters.swift
//  TestingSwiftUI
//
//  Created by Lucy on 01/09/22.
//

import Foundation

class Converters{
    func convertUsdToRupiah(usd: String) -> String{
        let rupiahRate = 14859.00
        let usdValue = Double(usd) ?? 0
        
        if usdValue <= 0{
            return "Please enter a positive number."
        }
        
        if usdValue >= 1_000_000 {
            return "Value too big to convert!"
        }
        
        return "Rp\(String(format: "%.2f", usdValue * rupiahRate))"
    }
}
