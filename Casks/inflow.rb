cask "inflow" do
  version "0.10.3"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "76d4c1b28961a1b4b1929b67a2492b7205ae93097d492da0b43510d8f93c00bc",
         intel: "169310ffab0fd89ad19f2de4856328d3e074e57373dcb4ecb20da86f45440c1c"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
