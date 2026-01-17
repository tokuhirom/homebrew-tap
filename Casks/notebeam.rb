cask "notebeam" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.6"
  sha256 arm:   "",
         intel: "4d66221619ff4ac62b5381a84e516b43a2131f04f74d6582fbf015c1502f9667"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_#{arch}.zip"
  name "NoteBeam"
  desc "Simple memo app for Mac"
  homepage "https://github.com/tokuhirom/NoteBeam"

  app "NoteBeam.app"

  zap trash: [
    "~/Documents/NoteBeam",
  ]
end
