class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.4.0/besu-25.4.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "5d11ef3b55cca8b060051ab910e0a89a76eae4f6a2d3d2bfb718ee742307fcaf"

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
