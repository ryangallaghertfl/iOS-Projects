//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Ryan Gallagher on 11/10/2023.
//


import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
