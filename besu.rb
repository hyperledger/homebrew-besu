class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "06d88ad11954ee545c3e032cf703d573b5a5a1abde2844ae5582003ab15143b0"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
