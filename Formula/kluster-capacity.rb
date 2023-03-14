# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KlusterCapacity < Formula
  desc "A simple CLI that support capacity estimation, cluster compression, scheduler simulation, fragmentation analysis and resource overview."
  homepage "https://github.com/k-cloud-labs/kluster-capacity"
  version "0.1.0"
  license "apache-2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k-cloud-labs/kluster-capacity/releases/download/v0.1.0/kluster-capacity_v0.1.0_darwin_arm64.tar.gz"
      sha256 "b48807ba01ff632e24475f35eebbbcf88b706ce823be70d47cad2bf6e90a27e0"

      def install
        bin.install "kluster-capacity"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k-cloud-labs/kluster-capacity/releases/download/v0.1.0/kluster-capacity_v0.1.0_darwin_x86_64.tar.gz"
      sha256 "2f58225e67be7e3e15cbb6280e8e9011d2496f579e1896b30a59a485cf962309"

      def install
        bin.install "kluster-capacity"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/k-cloud-labs/kluster-capacity/releases/download/v0.1.0/kluster-capacity_v0.1.0_linux_arm64.tar.gz"
      sha256 "e03ae39cca488ec5585cf418b07883dcc5f5a10d8ff9e9c2d21db7d037b13091"

      def install
        bin.install "kluster-capacity"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k-cloud-labs/kluster-capacity/releases/download/v0.1.0/kluster-capacity_v0.1.0_linux_x86_64.tar.gz"
      sha256 "720efef60f075075a2af70f61d4f3a8b7d2f2ff00c33720d3a778efb720529ce"

      def install
        bin.install "kluster-capacity"
      end
    end
  end

  test do
    system "#{bin}/kube-capacity version"
  end
end
