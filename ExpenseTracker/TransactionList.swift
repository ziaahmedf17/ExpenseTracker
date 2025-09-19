//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Zi on 20/09/2025.
//

import SwiftUI

struct TransactionList: View {
    
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack{
            List{
                // MARK: Transaction Groups
                
                ForEach(transactionListVM.groupTransactionsByMonth()){
                    
                }
            }
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("Light Mode") {
    let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    NavigationView{
        TransactionList()
            .environmentObject(transactionListVM)
            .preferredColorScheme(.light)
    }
}

#Preview("Dark Mode") {
    let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    NavigationView{
        TransactionList()
            .environmentObject(transactionListVM)
            .preferredColorScheme(.dark)
    }
}
