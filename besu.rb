class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.10.0/besu-25.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "a67ba604f278b784cb427a1ad514c97c680cb83cd09594143e34428bafc7ff62"

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
