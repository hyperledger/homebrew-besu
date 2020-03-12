class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "203a355d5d3a2c174457c3917a0b843336a9088560d7b41fdefee6af90085526"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
