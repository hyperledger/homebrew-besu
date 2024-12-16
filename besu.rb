class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.12.2/besu-24.12.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "ea6b429fc0bfa1e6d0469c1aa0c48268ea00a1043c7874dfdbdc9714cf8baf28"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
