//
//  Notes.swift
//  Xylophone
//
//  Created by Julieta Fernandez Irujo on 16/07/2024.
//

import SwiftUI

enum Notes: CaseIterable {
  case c, d, e, f, g, a, b
  
  var color: Color {
    switch self {
    case .c:
      return .red
    case .d:
      return .orange
    case .e: 
      return .yellow
    case .f: 
      return .green
    case .g: 
      return .indigo
    case .a:
      return .blue
    case .b: 
      return .purple
    }
  }
  
  var text: String {
    switch self {
    case .c:
      return Constants.cNote
    case .d: 
      return Constants.dNote
    case .e: 
      return Constants.eNote
    case .f: 
      return Constants.fNote
    case .g: 
      return Constants.gNote
    case .a: 
      return Constants.aNote
    case .b: 
      return Constants.bNote
    }
  }
  
  var padding: CGFloat {
    switch self {
    case .c: 
      return Constants.cNotePadding
    case .d:
      return Constants.dNotePadding
    case .e: 
      return Constants.eNotePadding
    case .f:
      return Constants.fNotePadding
    case .g:
      return Constants.gNotePadding
    case .a:
      return Constants.aNotePadding
    case .b:
      return Constants.bNotePadding
    }
  }
}
