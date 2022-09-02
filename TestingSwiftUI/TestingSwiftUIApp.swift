//
//  TestingSwiftUIApp.swift
//  TestingSwiftUI
//
//  Created by Lucy on 01/09/22.
//

import SwiftUI

@main
struct TestingSwiftUIApp: App {
    private let viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(inputNumber: "")
                .environmentObject(viewModel)
        }
    }
}
