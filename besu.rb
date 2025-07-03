class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.7.0/besu-25.7.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e6a805b69d9a90278a811682a2f891d72803c235f0566d9e204dc3ae3b3af401"

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
