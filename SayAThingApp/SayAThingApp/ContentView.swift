import SwiftUI

struct ContentView: View {
    private let audioPlayerService = AudioPlayerService()

    var body: some View {
        VStack(spacing: 24) {
            Text("Sound Button")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Tap the button to play the bundled sound.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button {
                audioPlayerService.playSound()
            } label: {
                Label("Play Sound", systemImage: "speaker.wave.2.fill")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding(.horizontal, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}
