//
//  TransactionROw.swift
//  ExpenseTracker
//
//  Created by Zi on 17/09/2025.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack(spacing: 20){
            VStack(alignment: .leading, spacing: 6){
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                // MARK: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // MARK: Transaction Date
                Text(Date(), format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview("Light Mode") {
    TransactionRow(transaction: transactionPreviewData)
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    TransactionRow(transaction: transactionPreviewData)
        .preferredColorScheme(.dark)
}
