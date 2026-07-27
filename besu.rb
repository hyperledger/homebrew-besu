class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.7.1/besu-26.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d9d5f77dd2db70c56f20492b30e79e85ed7831b5ac9ed853da48b3f1e6777225"

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
