//
//  NoteView.swift
//  Xylophone
//
//  Created by Julieta Fernandez Irujo on 16/07/2024.
//

import SwiftUI

struct NoteView: View {
  
  // MARK: - Properties
  let color: Color
  let text: String
  let horizontalPadding: CGFloat
  let tapGesture: () -> Void
  
  // MARK: - body
  var body: some View {
    ZStack {
      Color(color)
      Text(text)
        .font(.largeTitle)
        .foregroundStyle(.white)
    }
    .padding(.horizontal, horizontalPadding)
    .onTapGesture {
      tapGesture()
    }
  }
}
