class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "a6a2584e45e2f85022ba172e6cecdd0d4f43d249ee67ea2d41ff00a84fb4933b"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
