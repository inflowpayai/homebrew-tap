cask "inflow" do
  version "0.15.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "227eee4d99e84a0ca637476b3020ee99633f6c254db1fd269064f75a2221235d",
         intel: "937a0921cce17f49a7fd3f7228c7dc7c2d4bf74e890eadca697572a479af0243"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
