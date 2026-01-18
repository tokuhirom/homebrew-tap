cask "notebeam" do
  version "0.0.18"
  sha256 "de28b923e105d524f105292c50551f1bd27d9367d0b29c82d195e14b947d466b"

  url "https://github.com/tokuhirom/NoteBeam/releases/download/v#{version}/NoteBeam_v#{version}_darwin_universal.zip"
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
