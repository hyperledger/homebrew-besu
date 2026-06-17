class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.6.1/besu-26.6.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0adcf27c7b5e36335d166c7951ca8b74526d7ad5e1d24b2707a4e3ae1ff05e69"

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
