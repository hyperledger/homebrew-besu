class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.2.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "8df0adb5a15c28cf4c177e40a10c9721ec0ec74a7037d5c8043c06bc04b74097"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
