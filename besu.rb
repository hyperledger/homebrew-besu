class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.7.2/besu-23.7.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "a233c83591fc277e3d1530c84bb5ea896abad717d796b5e3b856c79199132b75"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
