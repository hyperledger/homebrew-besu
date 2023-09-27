class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.7.3/besu-23.7.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "136596454f647c706130e3e2983bdbb4a1cbfaf2bbf6e999466754f9213c11f6"

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
