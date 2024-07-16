//
//  ContentView.swift
//  Xylophone
//
//  Created by Julieta Fernandez Irujo on 16/07/2024.
//

import SwiftUI

struct XylophoneView: View {
  
  @EnvironmentObject private var viewModel: XylophoneViewModel
  
  // MARK: - body
  var body: some View {
    VStack(spacing: Constants.verticalSpacing) {
      ForEach(Notes.allCases, id: \.self) { note in
        NoteView(color: note.color,
                 text: note.text,
                 horizontalPadding: note.padding,
                 tapGesture: {
          viewModel.playSound(note: note.text)
          print(note.text)
        })
      }
    }
    .padding()
  }
}
