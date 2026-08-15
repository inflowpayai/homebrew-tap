cask "inflow" do
  version "0.12.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "2a6d617ee86dafdb1480ac006fdbce1fa18cf4f1127898a426b8fbd531fd0cd0",
         intel: "b91b78e2f40e269772dc50305222410a450b0c8796bb14e665b6379ab55478b6"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
