class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.8.0/besu-26.8.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d19de7996560d522016927dbe232cbc68ab479f1ab064eecec2ee363c86a7c10"

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
