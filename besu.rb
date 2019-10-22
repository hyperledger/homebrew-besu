class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "54cd70f3cd48f725454d5e545458bded84a70b14ac350fca3612c99380f1deed"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
