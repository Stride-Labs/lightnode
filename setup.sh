# download run script to re-run later
echo downloading script
URL="https://raw.githubusercontent.com/Stride-Labs/lightnode/main/zzz.sh"
curl -sL $URL > zzz.sh

# setup
echo setting up node
sudo apk update
sudo apk add curl tar wget pkgconfig libressl-dev jq git bash make build-base
sudo apk add go
git clone https://github.com/celestiaorg/celestia-node.git
cd celestia-node
git checkout v0.14.0
make build
build/celestia light init

echo pruning node
./celestia-node/build/celestia light unsafe-reset-store --p2p.network celestia
echo starting up node
./celestia-node/build/celestia light start --core.ip rpc.celestia.pops.one --p2p.network celestia --experimental-pruning
