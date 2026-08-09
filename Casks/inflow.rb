cask "inflow" do
  version "0.11.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "efba16317ba6bff5fd86b137573d913a188e8b5d7efc1cf505823b8c5a083a59",
         intel: "36de8a9cd8d8fcf5bfa4924c657d355c9e9bc8a088c42ab970dbc0f98f9d6002"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
