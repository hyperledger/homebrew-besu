class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.5/besu-21.10.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0deaa924b453a4ff0b6f2886cefaddaccbe5a4bf732d970480fdeae1672b94c2"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
