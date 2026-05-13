class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.5.0/besu-26.5.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "9ddbe9e94662459898ff7b3ff4439821eeeee3bc2ff961378604202fa7da09e6"

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
