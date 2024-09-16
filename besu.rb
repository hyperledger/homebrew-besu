class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.9.1/besu-24.9.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "cf8fb04a83d4efe990975d597d4145929852368f9c50c4ec6094790fa3ce95ea"

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
