cask "inflow" do
  version "0.10.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "454fc81734073f8db00e4f7c3e2ac1005349ac01b6dfdcd6c3fb365d30b2cd17",
         intel: "89e4ab8adcc5e69af63aeb25d1fd14e260594d0f8c137ee251421d6d21a2a23c"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
