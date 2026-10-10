cask "inflow" do
  version "0.14.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "4ae8cdd9bd18a4fbd524fef1c6ae825e83d2014205f2fe84e07c7e5a8beee832",
         intel: "e9344e0949bf6f82f7e5aadb6ed4eaf0cda16e1615c1a6687849c00e0dfa4faa"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
