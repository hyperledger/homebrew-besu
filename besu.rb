class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.9.0/besu-25.9.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e8f93cd8f9ca4f56346c2cc04b93437f25dbf455b387f72c0e3a0fdd4bc930f1"

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
