# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github"
  homepage "https://warrensbox.github.io/hubapp"
  version "0.3.18"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/0.3.18/hubapp_0.3.18_darwin_amd64.tar.gz"
      sha256 "d31c9794124f6cd7b98c9616aa264dd745a2dbbbcdaf0f3cf0d3650658b0cc2f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/hubapp/releases/download/0.3.18/hubapp_0.3.18_darwin_arm64.tar.gz"
      sha256 "f1444f0412c767b6dfd258e51799c3f34bf7d21c79dc1802cab861b5ea4324a5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/0.3.18/hubapp_0.3.18_linux_amd64.tar.gz"
      sha256 "2347368a0a15b3bd21640ac562572b1cd79232ef2fed21565242e18b6b9ae199"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/0.3.18/hubapp_0.3.18_linux_armv6.tar.gz"
      sha256 "88aad3642810aa438db00739d9c846ffd39ac71feb1890d421f8ff86f4fee007"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/0.3.18/hubapp_0.3.18_linux_arm64.tar.gz"
      sha256 "c036bb583272b8c47811491a5b5832624e7269cfebb1eb5d3b55b236a2282e71"
    end
  end

  def install
    bin.install "hubapp"
  end

  def caveats; <<~EOS
    Type 'hubapp install user/repo' on your command line and choose the app version that you want from the dropdown from the GitHub repo. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/hubapp --version"
  end
end
