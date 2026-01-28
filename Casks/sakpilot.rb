cask "sakpilot" do
  version "0.0.14"
  sha256 "e7f0416b4a65b983dd79aa9483739a1cf63b9d1dd31149f435a47e769d5d33d5"

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
