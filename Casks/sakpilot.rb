cask "sakpilot" do
  version "0.0.13"
  sha256 "abea37b86fa2aac07b2dcdfa6da6a46c9657422c9eea76b4f326c687e405fee3"

  url "https://github.com/tokuhirom/sakpilot/releases/download/v#{version}/SakPilot-darwin-universal.zip"
  name "SakPilot"
  desc "Desktop client for Sakura Cloud"
  homepage "https://github.com/tokuhirom/sakpilot"

  app "SakPilot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SakPilot.app"],
                   sudo: true
  end
end
