class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.6.0/besu-24.6.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "8b2d3a674cd7ead68b9ca68fea21e46d5ec9b278bbadc73f8c13c6a1e1bc0e4d"

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
