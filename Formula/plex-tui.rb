class PlexTui < Formula
  include Language::Python::Virtualenv

  desc "Standalone Plex terminal UI with mpv playback"
  homepage "https://github.com/so1omon563/plex-tui"
  url "https://files.pythonhosted.org/packages/33/4e/3094e6ec9da7158bfe34e2b64949411d8fb59c8dfea91d0fc7cdf9c34335/plex_tui-0.2.0.tar.gz"
  sha256 "39f36c60273ea7c22d2dc03e7ce55fd4dd4ca024c5985202e5279dfa323f547f"
  license "MIT"

  depends_on "mpv"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "plex-tui 0.2.0", shell_output("#{bin}/plex-tui --version")
    assert_match "plex-tui smoke ok", shell_output("#{bin}/plex-tui --smoke")
  end
end
