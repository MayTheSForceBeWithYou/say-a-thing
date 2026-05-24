import AVFoundation
import Foundation

final class AudioPlayerService {
    private var audioPlayer: AVAudioPlayer?

    func playSound() {
        if let audioPlayer {
            audioPlayer.currentTime = 0
            audioPlayer.play()
            return
        }

        guard let soundURL = findBundledSoundURL() else {
            print("⚠️ Could not find sound.mp3 or sound.wav in the app bundle.")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.prepareToPlay()
            audioPlayer?.currentTime = 0
            audioPlayer?.play()
        } catch {
            print("⚠️ Failed to initialize AVAudioPlayer: \(error.localizedDescription)")
        }
    }

    private func findBundledSoundURL(bundle: Bundle = .main) -> URL? {
        if let mp3 = bundle.url(forResource: "sound", withExtension: "mp3") {
            return mp3
        }

        if let wav = bundle.url(forResource: "sound", withExtension: "wav") {
            return wav
        }

        return nil
    }
}
