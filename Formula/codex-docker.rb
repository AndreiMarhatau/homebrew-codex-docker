class CodexDocker < Formula
  desc "Run Codex CLI in a disposable Docker container"
  homepage "https://github.com/AndreiMarhatau/codex-docker"
  url "https://github.com/AndreiMarhatau/codex-docker/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "d88819a6ab1687ba127c668aed38608f4b5a9b0f2e19ab813f0d1269e2524515"
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
