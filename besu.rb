class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.12.0/besu-24.12.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "edd686efaf4a6b0bcd4457dbd5f195554094209f505cfe311c270cad6060004f"

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
