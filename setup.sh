# download run script to re-run later
echo downloading execution script...
URL="https://raw.githubusercontent.com/Stride-Labs/lightnode/main/zzz.sh"
curl -sL $URL > zzz.sh

echo downloading pruning script...
URL="https://raw.githubusercontent.com/Stride-Labs/lightnode/main/prune.sh"
curl -sL $URL > prune.sh

# setup
echo setting up node...
sudo apk update
sudo apk add curl tar wget pkgconfig libressl-dev jq git bash make
sudo apk add go
git clone https://github.com/celestiaorg/celestia-node.git
cd celestia-node
git checkout v0.14.0
make build
build/celestia light init

echo starting up node...
build/celestia light start --core.ip rpc.celestia.pops.one --p2p.network celestia --experimental-pruning
