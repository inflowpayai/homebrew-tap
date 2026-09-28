cask "inflow" do
  version "0.13.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "5628565769cca459afbf137a3b036321d1b6df4dbcab1eb757d54189c596f18c",
         intel: "4bc7464e0b7684f82b6d0cec1f031f961b8b50a764a21d3a2da338e5c6883f26"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
