cask "notebeam" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.12"
  sha256 arm: "c8cfab6bc2cd7c9962be91cdd781c95d21bfe8276931035e230cfd8f61b55796", intel: "d839aaf3e1b7203d12a0167f4ef24494d107ef07154b73c1e71c6d22065e85c0"

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
