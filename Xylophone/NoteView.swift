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
  @State private var isPressed: Bool = false
  
  // MARK: - body
  var body: some View {
    ZStack {
      Color(color)
        .cornerRadius(Constants.cornerRadius)
        .opacity(isPressed ? Constants.pressedOpacity : Constants.initialOpacity)
      Text(text)
        .font(.largeTitle)
        .foregroundStyle(.white)
    }
    .padding(.horizontal, horizontalPadding)
    .onTapGesture {
      notePressed()
      tapGesture()
    }
  }
  
  // MARK: - Methods
  private func notePressed() {
    isPressed = true
    DispatchQueue.main.asyncAfter(deadline: .now() + Constants.time) {
      isPressed = false
    }
  }
}
