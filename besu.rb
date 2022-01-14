class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.7/besu-21.10.7.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "faf1ebfb20aa6171aa6ea98d7653339272567c318711d11e350471b5bba62c00"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
