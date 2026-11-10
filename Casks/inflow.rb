cask "inflow" do
  version "0.15.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f028488e1bdc294d109ec7bfaaaa623d4400e0179434d25528ad7d72cc3442ca",
         intel: "b3c35ee729e581a465b685faa7f5880c523153fca36a4c8aa5538ec8eb756a5a"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
