cask "sakpilot" do
  version "0.0.15"
  sha256 "0320ba989e1f4176c629eea062fb297875eb61c988f1f0ed5c66e6098793cb09"

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
