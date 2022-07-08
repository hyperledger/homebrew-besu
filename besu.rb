class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.4.4/besu-22.4.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "84a7bee8fc35c78fd6d9e7bbdc5cd28c577d95487480bb03b9642a3111b71bc3"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
