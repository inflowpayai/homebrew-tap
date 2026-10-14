cask "inflow" do
  version "0.14.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "86c34b9211a74f4c41b2b6444b0713fcbed4fcbae534fb49b2aafa52036be9af",
         intel: "4021817ef979f224c47e61b8755762c41f69f1bdc0cc7f47c5dc67fb7c1145ec"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
