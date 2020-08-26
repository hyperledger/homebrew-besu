class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "735cd511e1dae1590f2829d9535cb383aa8c526f059b3451859e5fcfccc48985"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
