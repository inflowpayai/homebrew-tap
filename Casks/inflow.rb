cask "inflow" do
  version "0.11.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "7f6e615d439f6369528d15442679eafc797408825fbef1f5fb88884399b68d50",
         intel: "0923445b24803bdb15defbbf7d12b0d1044e429256becf9d92b871fbf7aa0c2b"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
