//
//  ContentView.swift
//  Finance Tracker
//
//  Created by Luis Leal on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            // Main content views
            Group {
                if selectedTab == 0 {
                    BudgetTrackerView()
                } else if selectedTab == 1 {
                    SchedulerView()
                } else if selectedTab == 2 {
                    WorkLogTrackerView()
                } else if selectedTab == 3 {
                    SettingsView()
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            // Floating tab bar
            VStack {
                Spacer()
                FloatingTabBar(selectedTab: $selectedTab)
                    .padding(.bottom, 30) // Adjust the padding to control the floating effect
            }
        }
    }
}

#Preview {
    ContentView()
}
