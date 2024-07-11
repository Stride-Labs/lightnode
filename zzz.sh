echo pruning node
./celestia-node/build/celestia light unsafe-reset-store --p2p.network celestia
echo running node
./celestia-node/build/celestia light start --core.ip rpc.celestia.pops.one --p2p.network celestia --experimental-pruning