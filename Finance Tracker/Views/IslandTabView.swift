//
//  IslandTabView.swift
//  Finance Tracker
//
//  Created by Luis Leal on 5/30/24.
//

import Foundation
import SwiftUI

struct FloatingTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarButton(imageName: "dollarsign.circle", index: 0, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(imageName: "calendar", index: 1, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(imageName: "doc.text", index: 2, selectedTab: $selectedTab)
            Spacer()
            TabBarButton(imageName: "gear", index: 3, selectedTab: $selectedTab)
        }
        .padding(.vertical, -6)
        .padding()
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(.horizontal, 20)
    }
}

struct TabBarButton: View {
    let imageName: String
    let index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            Image(systemName: imageName)
                .font(.system(size: 24))
                .foregroundColor(selectedTab == index ? Color.blue : Color.gray)
                .padding()
        }
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

