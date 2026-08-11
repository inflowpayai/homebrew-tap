cask "inflow" do
  version "0.11.3"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "4280782150f03cf4364fc03991b9dc1a881a48628f28b8a62ff4f062265c8d66",
         intel: "72a0d0fbcbb6cb642d9f67f5401f291ce5be66e3c09d3521cf384c9304c57f8e"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
