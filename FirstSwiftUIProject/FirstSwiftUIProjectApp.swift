//
//  FirstSwiftUIProjectApp.swift
//  FirstSwiftUIProject
//
//  Created by intern on 9/26/23.
//

import SwiftUI

@main
struct FirstSwiftUIProjectApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
