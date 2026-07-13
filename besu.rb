class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.7.0/besu-26.7.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "f91f7f378faf1b804e4c9389904dd702d1b00d0033daebcfc2e145fe1c133863"

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
