//
//  XylophoneApp.swift
//  Xylophone
//
//  Created by Julieta Fernandez Irujo on 16/07/2024.
//

import SwiftUI

@main
struct XylophoneApp: App {
  
  // MARK: - Properties
  private let viewModel: XylophoneViewModel
  
  // MARK: - init
  init() {
    viewModel = XylophoneViewModel()
  }
  
  // MARK: - body
  var body: some Scene {
    WindowGroup {
      XylophoneView()
        .environmentObject(viewModel)
    }
  }
}
