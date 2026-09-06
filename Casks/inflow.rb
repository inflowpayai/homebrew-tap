cask "inflow" do
  version "0.12.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f94c4be3e17793c5263bc1fba0be6f60051a2920a938bf33f50c3f84ef8e184c",
         intel: "7182c13edee0647da80907a0d0cec031f2c86a4ae80e1459c68d134b8b960f9c"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
