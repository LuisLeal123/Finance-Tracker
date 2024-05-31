//
//  BudgetTrackerView.swift
//  Finance Tracker
//
//  Created by Luis Leal on 5/29/24.
//

/**
 The 'Budget Tracker' will be a minimalistic way to monitor your budget. In any case of spending,
 you can quickly view your remaining budget (optional to hide it) and have the ability to deduct or
 add money depending on income or personal gain
 */





import Foundation
import SwiftUI

struct BudgetTrackerView: View {
    var body: some View {
        Text("Budget Tracker")
            .font(.largeTitle)
        
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color(UIColor(red: 40/255, green: 40/255, blue: 60/255, alpha: 1.0)),
                    Color(UIColor(red: 70/255, green: 50/255, blue: 90/255, alpha: 1.0)),
                    Color(UIColor(red: 50/255, green: 50/255, blue: 70/255, alpha: 1.0)),
                ]), startPoint: .bottom, endPoint: .top)
                .overlay(
                    Color(UIColor(red: 90/255, green: 70/255, blue: 120/255, alpha: 0.1))
                )
            )

            .edgesIgnoringSafeArea(.all)
    }
}

struct BudgetTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetTrackerView()
    }
}
