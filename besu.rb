class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-20.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "2b50a375aae64b838a2cd9d43747006492cae573f1be11745b7f643646fd5a01"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
