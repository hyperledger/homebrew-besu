class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.10.3-hotfix/besu-23.10.3-hotfix.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1c37762909858a40eca749fb85b77fb4d1e918f247aff56d518144828bd85378"

  depends_on "openjdk" => "17+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
