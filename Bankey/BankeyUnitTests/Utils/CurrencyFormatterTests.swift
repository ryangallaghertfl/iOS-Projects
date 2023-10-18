//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Ryan Gallagher on 12/10/2023.
//

import Foundation

import XCTest

@testable import Bankey

class CurrencyFormatterTests: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    // Challenge: You write
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "£929,466.23")
    }

    // Challenge: You write
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "£0.00")
    }
    
    // no hard-coded dollar
    func testDollarsFormattedWithCurrencySymbol() {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "\(currencySymbol)929,466.23")
    }
}
