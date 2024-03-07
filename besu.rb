class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.3.0/besu-24.3.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "41ea2ca734a3b377f43ee178166b5b809827084789378dbbe4e5b52bbd8e0674"

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
