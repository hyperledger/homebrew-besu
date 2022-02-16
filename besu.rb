class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.1.0/besu-22.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1b701ff5b647b64aff3d73d6f1fe3fdf73f14adbe31504011eff1660ab56ad2b"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
