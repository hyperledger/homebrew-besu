class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/hyperledger/besu-binaries/besu/22.7.5/besu-22.7.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0efd783c7ce8fcd1ffa55735d071d5ffeb71741007c1025ccafd0221c903a392"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
