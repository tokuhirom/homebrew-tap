cask "notebeam" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.10"
  sha256 arm: "55e24a226ee2800e87165a08d31cf2d8493c3c63d0ae480b17e5d9d05d871579", intel: "23f01c1c75d5bdc0382fbb310d592148d129427045c0d6aec88913fefc8367b5"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_#{arch}.zip"
  name "NoteBeam"
  desc "Simple memo app for Mac"
  homepage "https://github.com/tokuhirom/NoteBeam"

  app "NoteBeam.app"

  zap trash: "~/Documents/NoteBeam"
end
