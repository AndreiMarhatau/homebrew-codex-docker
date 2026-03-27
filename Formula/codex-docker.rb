class CodexDocker < Formula
  desc "Run Codex CLI in a disposable Docker container"
  homepage "https://github.com/AndreiMarhatau/codex-docker"
  url "https://github.com/AndreiMarhatau/codex-docker/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "440d8b20d476f59ef5e1f7d8c05bb8411fa1aa3f85cedc3d17e87f085fac46fc"
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
