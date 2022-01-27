class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.9/besu-21.10.9.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c3ba3f07340fa80064ba7c06f2c0ec081184e000f9a925d132084352d0665ef9"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
