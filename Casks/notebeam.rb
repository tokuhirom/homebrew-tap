cask "notebeam" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.11"
  sha256 arm: "e962ed5ee6a0d5b7285597df6fb54023cb2b4b5ff85f7a2a5587c9870fc4a0e1", intel: "fe6df8f79c9b6476da25956dc37b43e797dae6e172495776e58b6788d58131fc"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_#{arch}.zip"
  name "NoteBeam"
  desc "Simple memo app for Mac"
  homepage "https://github.com/tokuhirom/NoteBeam"

  app "NoteBeam.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/NoteBeam.app"],
                   sudo: true
  end

  zap trash: "~/Documents/NoteBeam"
end
