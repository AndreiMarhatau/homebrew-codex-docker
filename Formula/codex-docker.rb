class CodexDocker < Formula
  desc "Run Codex CLI in a disposable Docker container"
  homepage "https://github.com/AndreiMarhatau/codex-docker"
  url "https://github.com/AndreiMarhatau/codex-docker/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "52c032f58e42263bef0906ff28c8690b27ab1cfea581bcfccbf540acf3805e0e"
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
