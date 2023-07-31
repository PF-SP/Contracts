#! /bin/bash
solc --evm-version paris contracts/Stakeing/SunNFTStakeing.sol --bin --abi --overwrite --optimize --optimize-runs 1000 --combined-json abi,asm,ast,bin,bin-runtime,devdoc,function-debug,function-debug-runtime,generated-sources,generated-sources-runtime,hashes,metadata,opcodes,srcmap,srcmap-runtime,storage-layout,userdoc -o out/Stakeing/ --gas >out/Stakeing/gas.profile
npx hardhat flatten contracts/Stakeing/SunNFTStakeing.sol >out/Stakeing/SunNFTStakeingFlattern.sol
