# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChartReleaser < Formula
  desc "Hosting Helm Charts via GitHub Pages and Releases"
  homepage "https://github.com/helm/chart-releaser/"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.3.0/chart-releaser_1.3.0_darwin_amd64.tar.gz"
      sha256 "3b662c157e6ad940f6ee8c55165052d13336af954578c57478a550ddbc6f0a90"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helm/chart-releaser/releases/download/v1.3.0/chart-releaser_1.3.0_darwin_arm64.tar.gz"
      sha256 "8ffb30d55637a2dfb1143edeeb1b9d9d58b8d067d11b88a9b85c1c6ea421d9c0"

      def install
        bin.install "cr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helm/chart-releaser/releases/download/v1.3.0/chart-releaser_1.3.0_linux_arm64.tar.gz"
      sha256 "0a07381443192f8745e72baa75ed1aee1ec11add881b5210e04b69b1b50c1be0"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.3.0/chart-releaser_1.3.0_linux_amd64.tar.gz"
      sha256 "baed2315a9bb799efb71d512c5198a2a3b8dcd139d7f22f878777cffcd649a37"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/helm/chart-releaser/releases/download/v1.3.0/chart-releaser_1.3.0_linux_armv6.tar.gz"
      sha256 "10b36d4b8a500f607520ede735e9653ad204ed8bb32d299a26de62fca3c2828d"

      def install
        bin.install "cr"
      end
    end
  end

  test do
    system "#{bin}/cr --version"
  end
end
