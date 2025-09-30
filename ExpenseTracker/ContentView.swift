//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Zi on 17/09/2025.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    
    var demoData: [Double] = [8, 2, 4, 6, 12, 9, 2]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // MARK: Chart
                    
                    LineChartView(
                                data: [12, 24, 36, 48, 60],
                                title: "$900",
                                legend: "Monthly", // optional
                                style: ChartStyle(
                                    backgroundColor: Color(.systemBackground),
                                    accentColor: .blue,
                                    gradientColor: GradientColor(start: .blue, end: .purple),
                                    textColor: .primary,
                                    legendTextColor: .secondary,
                                    dropShadowColor: .gray
                                )
                            )
                    .frame(height: 300)
                    .background(Color.systemBackground)
                    
                    // MARK: Transacion List
                    
                    RecentTransactionList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                // MARK: Notification Icon
                ToolbarItem{
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(.primary)
    }
}

#Preview("Light Mode") {
    let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    ContentView()
        .environmentObject(transactionListVM)
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    ContentView()
        .environmentObject(transactionListVM)
        .preferredColorScheme(.dark)
}
