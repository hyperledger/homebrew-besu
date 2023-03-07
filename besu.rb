class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.1.1/besu-23.1.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "afcf852f193adb8e82d187aa4f02e4669f12cc680270624d37101b94cf37adec"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
