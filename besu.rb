class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.6.0/besu-26.6.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "45d0087e33cb6477c3515db61324d25e5333115aa0f699d03ed35791dfc876a1"

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
