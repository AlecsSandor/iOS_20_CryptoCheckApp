//
//  CryptoTradingApp.swift
//  CryptoTrading
//
//  Created by Alex on 2/8/24.
//

import SwiftUI

@main
struct CryptoTradingApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
