cask "notebeam" do
  version "0.0.22"
  sha256 "3905d635484cb116fc277b021d291625f72e14b8e729a01cf36918f7e59dd73e"

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
