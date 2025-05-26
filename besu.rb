class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.5.0/besu-25.5.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "4a834cdfb6a3b1be50a50122b1b1391c979c305bbe0831b29223c24900c6603f"

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
