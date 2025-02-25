class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.2.1/besu-25.2.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "45c04bbe2173f4ba3c4c5315f92958be6573a296b713f56509d5471ae97925f1"

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
