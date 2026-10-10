cask "inflow" do
  version "0.14.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "b4f7e20f678d7331439d0af353b021b58697a76c936a8e407cc4f82a2c418d3f",
         intel: "24d04f679ae1f691afb39cb37b610c99b66f0b371797fbabb916d07adec7f193"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
