import { ethers } from "hardhat";

async function main() {
  const Lock = await ethers.getContractFactory("SunNFT");
  const CollectionNumber = 1;
  const nft = await Lock.deploy(`SunCity-NFT-Col${CollectionNumber}`, {
    value: 0,
  });

  await nft.deployed();

  console.log(`NFT deployed to ${nft.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
