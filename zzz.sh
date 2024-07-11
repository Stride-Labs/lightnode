# download run script
echo downloading script
URL="https://raw.githubusercontent.com/Stride-Labs/lightnode/main/run.sh"
curl -sL $URL > run.sh

# setup
echo setting up node
sudo apk update
sudo apk add curl tar wget pkgconfig libressl-dev jq git bash make
sudo apk add go
git clone https://github.com/celestiaorg/celestia-node.git
cd celestia-node
git checkout v0.14.0
make build
build/celestia light init
