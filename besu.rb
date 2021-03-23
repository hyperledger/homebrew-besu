class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.3/besu-21.1.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "38893cae225e5c53036d06adbeccc30aeb86ef08c543fb742941a8c618485c8a"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
