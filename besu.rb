class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-21.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e4c8fe4007e3e5f7f2528cbf1eeb5457caf06536c974a6ff4305035ff5724476"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
