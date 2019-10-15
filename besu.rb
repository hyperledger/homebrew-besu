class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "8d30fd9b7fd262108032b7ba87e6f1f8442a8546e9ecaf61e7fdf7f28d9d125b"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
