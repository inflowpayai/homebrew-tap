cask "inflow" do
  version "0.12.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "dc8dc2fb64a2b57c38a965024c48e2b59a20278824b546efea3f0f77dc3eca40",
         intel: "d5aed20e1c79ce15567c6766fc9137172c0344c4ed6078ae2afd4a20a36261f2"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip",
      verified: "github.com/inflowpayai/inflow-cli/"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
