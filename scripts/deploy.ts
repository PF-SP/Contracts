import { ethers } from "hardhat";

async function main() {
  console.log({ ethers });
  const SunCity = await ethers.getContractFactory("SunCity");
  console.log({ SunCity });
  const CollectionNumber = 1;
  const nft = await SunCity.deploy(
    `SunCity-NFT-Col${CollectionNumber}`,
    "SUN-NFT",
    {
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
