#!/bin/bash
set -euo pipefail
TEMP=`mktemp -d`

function cleanup() {
	rm -rf "${TEMP}"
}
trap cleanup EXIT

VERSION=${1?Must specify the pantheon version to get}
URL="https://consensys.bintray.com/pegasys-repo/pantheon-${VERSION}.zip"
echo "Downloading version ${VERSION} of pantheon from ${URL}..."
curl -o "${TEMP}/pantheon-${VERSION}.zip" -L --fail "${URL}"

unzip -t "${TEMP}/pantheon-${VERSION}.zip"

echo "Calculating new hash..."
HASH=`shasum -a 256 ${TEMP}/pantheon-${VERSION}.zip | cut -d ' ' -f 1`

cat > pantheon.rb <<EOF
class Pantheon < Formula
  desc "pantheon ethereum client"
  homepage "https://github.com/pegasyseng/pantheon"
  url "${URL}"
  # update with: ./updatePantheon.sh <new-version>
  sha256 "${HASH}"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/pantheon"
  end

  test do
    system "#{bin}/pantheon" "--version"
  end
end
EOF

echo "New url: ${URL}"
echo "New hash: ${HASH}"
echo "Success.  Commit the changes to pantheon.rb to release."
