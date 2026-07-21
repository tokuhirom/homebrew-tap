cask "notebeam" do
  version "0.0.23"
  sha256 "d3263cc72bfcd61a8bb91786d7db002c764193711f22adb99deafd34584d0468"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_universal.zip"
  name "NoteBeam"
  desc "Simple memo app"
  homepage "https://github.com/tokuhirom/NoteBeam"

  app "NoteBeam.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/NoteBeam.app"],
                   sudo: true
  end

  zap trash: "~/Documents/NoteBeam"
end
