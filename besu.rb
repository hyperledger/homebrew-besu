class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.10.0/besu-24.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "2c3833aae5c7461d6bbb54dc5f25ad105bcc591b6385284b5afda0907909c601"

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
