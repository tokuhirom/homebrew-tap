cask "sakpilot" do
  version "0.0.18"
  sha256 "e00199a4a0b2244ffdce0948939f85a5d3bc0f1d05a63a2dcc6de88ec5314ecc"

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
