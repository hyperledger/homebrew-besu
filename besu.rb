class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-20.10.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "ac4fae310957c176564396f73c0f03c60c41129d43d078560d0dab533a69fd2a"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
