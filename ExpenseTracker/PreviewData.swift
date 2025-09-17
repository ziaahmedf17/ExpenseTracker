//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Zi on 17/09/2025.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "15/10/2025", institution: "GenWizz", account: "Clients", merchant: "Huwaie", amount: 99.99, type: "debit", categoryId: 2342, category: "iOS App", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction] (repeating: transactionPreviewData, count: 10)
