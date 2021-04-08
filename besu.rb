class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.4/besu-21.1.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "58ae55b492680d92aeccfbed477e8b9c25ccc1a97cca71895e27448d754a7d8b"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
