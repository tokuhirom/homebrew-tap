cask "sakpilot" do
  version "0.0.9"
  sha256 "044b2911dffc1a1fd9e07f8690df83fdb6d7935fe2e1059fc0050f4a491ba4ce"

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
