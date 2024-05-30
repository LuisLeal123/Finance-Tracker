//
//  ContentView.swift
//  Finance Tracker
//
//  Created by Luis Leal on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BudgetTrackerView()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Budget")
                }
            
            SchedulerView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
            
            WorkLogTrackerView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Work Log")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    ContentView()
}
