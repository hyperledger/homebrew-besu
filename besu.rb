class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.5.2/besu-24.5.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "23966b501a69e320e8f8f46a3d103ccca45b53f8fee35a6543bd9a260b5784ee"

  depends_on "openjdk" => "17+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
