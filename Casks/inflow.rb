cask "inflow" do
  version "0.10.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "7f9c2d05feb05da27455fdeafd6e6d1a3e14b8b6e30c66d681d5ffcec24d4ff1",
         intel: "a3f34faea28612c10669684616e46e109b5ab0f37ef8d596294720c41a10c63e"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
