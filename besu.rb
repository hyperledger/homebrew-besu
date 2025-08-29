class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.8.0/besu-25.8.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e6e1bf8756768a1c6c3b193c29cc76c816cf8b4186b9fa4209c84d0ed3d9afd7"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
