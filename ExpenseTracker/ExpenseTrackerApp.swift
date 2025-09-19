//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Zi on 17/09/2025.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
