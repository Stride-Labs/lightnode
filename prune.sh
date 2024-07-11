echo pruning node...
pkill celestia
rm -rf .celestia-light
./celestia-node/build/celestia light unsafe-reset-store --p2p.network celestia