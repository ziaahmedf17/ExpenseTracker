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
            // MARK: Transaction Category Icon
            RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.icon.opacity(0.3))
                .frame(width: 44, height: 44, )
            
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
                Text(transaction.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            // MARK: Transaction Amount
            Text(transaction.signedAmount, format: .currency(code: "USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)
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
