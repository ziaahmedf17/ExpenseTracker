//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Zi on 17/09/2025.
//

import Foundation
import SwiftUI

extension Color {
//    static let backgroundColor = Color("Background")
//    static let iconColor = Color("Icon")
//    static let textColor = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
        print("Initializing Dateformatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else { return Date()}
        return parsedDate
    }
}
