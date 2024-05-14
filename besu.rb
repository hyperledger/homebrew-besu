class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.5.1/besu-24.5.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "13d75b6b22e1303f39fd3eaddf736b24ca150b2bafa7b98fce7c7782e54b213f"

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
