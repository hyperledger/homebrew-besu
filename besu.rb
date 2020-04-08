class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "31111c00271bb9fe10c4930377304e3a5ceba209e0f4e78e9a2ee73c3da0cc1d"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
