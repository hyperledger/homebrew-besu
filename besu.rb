class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.12.1/besu-24.12.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "87bbd9d175048ce9b42d2470354ce33ca8637a1bcb5e9cb13bd8e0f975a1eaa2"

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
