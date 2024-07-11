class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.7.0/besu-24.7.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "7e92e2eb469be197af8c8ca7ac494e7a2e7ee91cbdb02d99ff87fb5209e0c2a0"

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
