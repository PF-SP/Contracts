solc contracts/SunToken.sol --bin --abi --overwrite --optimize --optimize-runs 1000 --combined-json abi,asm,ast,bin,bin-runtime,devdoc,function-debug,function-debug-runtime,generated-sources,generated-sources-runtime,hashes,metadata,opcodes,srcmap,srcmap-runtime,storage-layout,userdoc -o out/20/ --gas >out/20/gas.profile
npx hardhat flatten contracts/SunToken.sol >out/20/SunTokenFlattern.sol
