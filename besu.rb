class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.8.0/besu-24.8.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "9ee217d2188e8da89002c3f42e4f85f89aab782e9512bd03520296f0a4dcdd90"

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
