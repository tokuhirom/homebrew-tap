cask "notebeam" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.5"
  sha256 arm:   "",
         intel: "6c9e16ef6457d8a503bf24662ea9cd3060fb6c863a1df6dd0529eb15cdf99a4c"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_#{arch}.zip"
  name "NoteBeam"
  desc "Simple memo app for Mac"
  homepage "https://github.com/tokuhirom/NoteBeam"

  app "NoteBeam.app"

  zap trash: [
    "~/Documents/NoteBeam",
  ]
end
