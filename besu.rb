class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "629f44e230a635b09f8d82f2196d70d31193233718118a46412f11c50772dc85"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
