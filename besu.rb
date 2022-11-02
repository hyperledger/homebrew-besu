class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/hyperledger/besu-binaries/besu/22.10.0/besu-22.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "8ad4927469e8e128a3a2c7a708f108393eebc82c522f66cdcac4b7d206e07f90"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
