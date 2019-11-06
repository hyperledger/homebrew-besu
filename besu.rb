class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "53589612bcdc5962258ebede8e98c483c58d42887a1fd0b38e6c595a32ecdd77"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
