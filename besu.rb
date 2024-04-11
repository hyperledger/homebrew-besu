class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.3.3/besu-24.3.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "b44951e68c6978de7f289ebd5f0111f0087cd266fd0c133afcf33b2004aa1a2a"

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
