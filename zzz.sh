echo running node...
pkill celestia
./celestia-node/build/celestia light start --core.ip rpc.celestia.pops.one --p2p.network celestia --experimental-pruning