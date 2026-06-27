set -euo pipefail

# Pick a Zola version that matches your site. Check https://github.com/getzola/zola/releases
ZOLA_VERSION="0.19.2"
ARCHIVE="zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
URL="https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/${ARCHIVE}"

# download and extract zola into .bin (committed to the build workspace only)
mkdir -p .bin
curl -sL "${URL}" | tar -xz -C .bin --strip-components=1 zola
chmod +x .bin/zola

# add to PATH for the rest of the build
export PATH="$PWD/.bin:$PATH"

# run the build
zola build
