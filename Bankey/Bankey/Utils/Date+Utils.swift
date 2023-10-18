//
//  Date+Utils.swift
//  Bankey
//
//  Created by Ryan Gallagher on 16/10/2023.
//

import Foundation

//extension Date {
//    static var bankeyDateFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.timeZone = TimeZone(abbreviation: "GMT")
//        return formatter
//    }
//    
//    var monthDayYearString: String {
//        let dateFormatter = Date.bankeyDateFormatter
//        dateFormatter.dateFormat = "MMM d, yyyy"
//        return dateFormatter.string(from: self)
//    }
//}

extension Date {
    static var bankeyDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.locale = Locale(identifier: "en_GB")  // Set the locale to UK
        return formatter
    }
    
    var monthDayYearString: String {
        let dateFormatter = Date.bankeyDateFormatter
        dateFormatter.dateFormat = "d MMM yyyy"  // Change the date format
        return dateFormatter.string(from: self)
    }
}
