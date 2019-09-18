class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "https://consensys.bintray.com/pegasys-repo/pantheon-1.2.3.zip"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "1593196f14f78c1fa569b4fc343d4c88d5f805654865deb4c3865cbc4c336f09"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
