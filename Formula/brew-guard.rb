class BrewGuard < Formula
  desc "Security and privacy policy layer for Homebrew"
  homepage "https://github.com/gonzalogtesta/brew-guard"
  url "https://github.com/gonzalogtesta/brew-guard/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3d680834607d9ae26c692f73ad7a5a5520e8e65c16f56ac8910b765a16d2ffe4"
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
