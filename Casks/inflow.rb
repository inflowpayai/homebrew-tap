cask "inflow" do
  version "0.9.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "a5d399506dcdbf7ff31d39853be075d9e24dd7dbe44a11bebb71676b39da34dc",
         intel: "e339149c1a47d40d179b67c5aff4a775086cc35a155a18bd13c7ab484c7fd17b"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
