class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.4.0/besu-22.4.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "5fa7f927c6717ebf503291c058815cd0c5fcfab13245d3b6beb66eb20cf7ac24"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
