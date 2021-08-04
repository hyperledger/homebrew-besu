class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.7.2/besu-21.7.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "db47fd9ba33b36436ed6798d2474f7621c733353fd04f49d6defffd12e3b6e14"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
