# say-a-thing

## Sound Button iOS App (SwiftUI)

This repository now includes a small native iPhone app scaffold at:

`SayAThingApp/`

### Project structure

- `SayAThingApp/SayAThingApp.xcodeproj`
  - Xcode project and shared scheme (`SayAThingApp`)
- `SayAThingApp/SayAThingApp/SayAThingApp.swift`
  - App entry point
- `SayAThingApp/SayAThingApp/ContentView.swift`
  - UI: title, instruction text, and one large `Play Sound` button
- `SayAThingApp/SayAThingApp/AudioPlayerService.swift`
  - Uses `AVAudioPlayer` (`AVFoundation`) to load/play bundled `sound.mp3` or `sound.wav`
  - Prints a helpful debug message when no bundled sound file is found
  - Repeated taps replay from the beginning
- `SayAThingApp/SayAThingApp/sound.wav`
  - Tiny placeholder sample sound (replaceable)
- `SayAThingApp/docs/ui-screenshot.png`
  - UI preview screenshot

## Sound file instructions

The app searches the main bundle in this order:

1. `sound.mp3`
2. `sound.wav`

To replace audio:

1. In Xcode, open `SayAThingApp.xcodeproj`
2. Replace `SayAThingApp/SayAThingApp/sound.wav` **or** add `sound.mp3`
3. Ensure the file is included in the `SayAThingApp` target resources

## Build and run in Xcode

1. Open `SayAThingApp/SayAThingApp.xcodeproj`
2. Select the `SayAThingApp` scheme
3. Choose an iPhone Simulator (or device)
4. Press **Run**
5. Tap **Play Sound** in the app

## Validation notes

- No build/test tooling existed in the repository before this scaffold.
- In this Linux sandbox, Xcode/iOS simulator are unavailable, so iOS build/run validation must be completed in Xcode on macOS.
- Missing sound handling is implemented in `AudioPlayerService` with a safe fallback debug print, so button taps do not crash when audio is absent.

## Assumptions

- iOS deployment target: 17.0
- iPhone-only target (`TARGETED_DEVICE_FAMILY = 1`)
- Minimal starter architecture was preferred over adding extra layers/features
