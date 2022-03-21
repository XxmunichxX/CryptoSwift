//
//  StatisticModel.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 18/03/22.
//

import Foundation


struct StatisticModel: Identifiable {
    
    let title: String
    let value: String
    let percentageChange: Double?
    let id = UUID().uuidString
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
}
