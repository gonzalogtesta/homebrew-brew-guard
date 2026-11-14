class BrewGuard < Formula
  desc "Security and privacy policy layer for Homebrew"
  homepage "https://github.com/gonzalogtesta/brew-guard"
  url "https://github.com/gonzalogtesta/brew-guard/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "3ff9128e40bbf566486e8b237c935a5bfa295c6bbc894572af13a28ead03db51"
  license "MIT"

  depends_on "go" => :build

  def install
    # go.mod pins an exact Go version. Never let Go download another toolchain.
    ENV["GOTOOLCHAIN"] = "local"
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/brew-guard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brew-guard version")
  end
end
