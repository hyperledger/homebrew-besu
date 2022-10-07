class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.6/besu-22.7.6.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "ae05040027b96ba458a08cfee8577dafe1d85a3afce793f00f798cedb3ab547d"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
