class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.6.0/besu-25.6.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e9d1c27369e269e0412aa264f791379a0fd4b58f103d4016068fabba2149f466"

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
