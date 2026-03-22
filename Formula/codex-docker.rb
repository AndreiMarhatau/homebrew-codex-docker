class CodexDocker < Formula
  desc "Run Codex CLI in a disposable Docker container"
  homepage "https://github.com/AndreiMarhatau/codex-docker"
  url "https://github.com/AndreiMarhatau/codex-docker/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "560af9c114596e1ee9a170f2b877b260648447f98e2b242d64664b513a8ebd15"
  license "MIT"

  depends_on "docker"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "codex-docker"
  end

  test do
    assert_match "codex-docker", (bin/"codex-docker").read
  end
end
