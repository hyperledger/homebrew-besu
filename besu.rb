class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.6/besu-21.1.6.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "33b0e15ee9ac5731439b9133bacc12879734cdd0a952032630c1e19bcc114be2"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
