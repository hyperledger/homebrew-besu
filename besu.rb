class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.2.2/besu-25.2.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "27bf8ae3d81bdd86590c9da86b3754c3df0a5e12a3c7eeb20628fc4fa1d1ebad"

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
