//
//  XylophoneViewModel.swift
//  Xylophone
//
//  Created by Julieta Fernandez Irujo on 16/07/2024.
//

import AVFoundation.AVAudioPlayer

class XylophoneViewModel: ObservableObject {

  // MARK: - Properties
  private var player: AVAudioPlayer?

  // MARK: - Methods
  func playSound(note: String) {
    guard let url: URL = Bundle.main.url(forResource: note,
                                         withExtension: Constants.soundExtension) else { return }
    do {
      player = try AVAudioPlayer(contentsOf: url)
      player?.prepareToPlay()
      player?.play()
      
    } catch let error {
      print(error.localizedDescription)
    }
  }
}
