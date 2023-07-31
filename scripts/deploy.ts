import { BigNumber } from "ethers";
import { ethers } from "hardhat";

async function main() {
  const SunCity = await ethers.getContractFactory("SunToken20");
  const CollectionNumber = 1;
  const gasPrice = await ethers.provider.getGasPrice();
  console.log(`Current Gas Price is ${gasPrice}`);
  const nft = await SunCity.deploy(
    `SunCity-NFT-Col${CollectionNumber}`,
    "SUN-NFT",
    {
      gasPrice: gasPrice,
      value: 0,
    }
  );

  await nft.deployed();
  console.log(`NFT deployed to ${nft.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
