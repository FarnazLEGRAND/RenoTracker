//
//  RenovationProject+.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 08/09/2023.
//

import Foundation
// bayad import swift Ui
import SwiftUI

//add Id as ProjectNumber tp renovationProject
extension RenovationProject:Identifiable{
    var id:Int {
        self.projectNumber
    }
}

extension RenovationProject{
    
    var formattedDueDate: String{
        let formatter = DateFormatter ()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: dueDate)
    }
    var totalPunchListItems: Int {
         punchList.count // total
     }
    
//    nombre reel : Int et Flote:Double mesle flot pister momayez dare 5/2=2 :Int, 5.0/2=2.5
//    filtre les donner filter date => get pinchItem with status complete
    var precentComplete: Double {
        // filer data => get puchItem with status complete
        let completePuchListItems = punchList.filter { punchListItem in punchListItem.status == .complete}
        let prencentComplete = Double(completePuchListItems.count)/Double(totalPunchListItems)
         return prencentComplete
     }


//numberFormatter est deja chez Swift pour changer format :formatter.string = 50% ahgar javab nadashte bashe 0%
    var formattedPercentComplete: String {
          let formatter = NumberFormatter()
          formatter.numberStyle = .percent
          return formatter.string(from: NSNumber(value: precentComplete)) ?? "0%" // 50%
      }
    
    var budgetAmountRemaining: Double {
          budgetAmountAllocated - budgetSpentToDate
      }
    
//    if true returm .onBudjet si c'est fals .Overbudget mesle estefade if hast
    
    var budgetStatus: BudgetStatus {
        budgetAmountRemaining >= 0 ? .onBudget : .overBudget // condition ? result if true : result if false
    }
    
    var formattedBudgetAmountAllocated: String {
        self.currencyFormatter.string(from: NSNumber(value: budgetAmountAllocated)) ?? "unknown"
    }
    
    var formattedBudgetSpentToDate: String {
        self.currencyFormatter.string(from: NSNumber(value: budgetSpentToDate)) ?? "unknown"
    }
    
    var formattedBudgetAmountRemaining: String {
        self.currencyFormatter.string(from: NSNumber(value: budgetAmountRemaining)) ?? "unknown"
    }
    
    var budgetStatusSymbol: Image {
        budgetStatus == .onBudget ? Image(systemName: "checkmark.circle.fill") : Image(systemName: "x.circle.fill")
    }
    
    var budgetStatusForegroundColor: Color {
        budgetStatus == .onBudget ? .green : .red
    }
    
    private var currencyFormatter: NumberFormatter {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        return currencyFormatter
    }
    
}
