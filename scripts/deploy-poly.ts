import { BigNumber } from "ethers";
import { ethers, network } from "hardhat";
import { open, writeFile } from "fs";

let gasDetails = {
  // gasLimit: "6000000",
  gasPrice: "2500000000",
  value: 0,
};

async function deployToken() {
  const SunToken = await ethers.getContractFactory("SunToken20");
  const token = await SunToken.deploy(`SunCityToken`, "SUN", { ...gasDetails });
  await token.deployed();
  // console.log(`NFT deployed to ${token.address}`);
  return token;
}

async function deployNFT721() {
  const SunNft721 = await ethers.getContractFactory("SunToken721");
  const nft = await SunNft721.deploy(`SunCityNFT`, "SUN", { ...gasDetails });
  await nft.deployed();
  return nft;
}

async function deployNFT1155() {
  const SunNft1155 = await ethers.getContractFactory("SunToken1155");
  const pool = await SunNft1155.deploy({ ...gasDetails });
  await pool.deployed();
  return pool;
}

async function deployStakeingPool() {
  const SunStakeingPool = await ethers.getContractFactory("StakeingPool");
  const nft = await SunStakeingPool.deploy({ ...gasDetails });
  await nft.deployed();
  return nft;
}

async function main() {
  console.log(
    `${network.name} -> ${network.config.gasPrice} ${network.config.chainId}`
  );
  // console.log("deploying token ...");
  // var token = await deployToken();
  // console.log("StakingPool deploying ...\r");
  // var nftStakingPool = await deployStakeingPool();
  // console.log(`StakingPool ${nftStakingPool.address}\r`);
  // console.log("deploying 721 nft ...");
  // var nft721 = await deployNFT721();
  // console.log("deploying 1155 nft ...");
  // var nft1155 = await deployNFT1155();
  let deploymentDetail = `
# Deployed @ ${Date.now()} on ${network.name}\n
- SunToken: 0xD82769043F17F05debAea51E51eE07e0F26E7967
- NFT:
\t- 721: 0x075134D0adb1759322c83accfB3b8e3A99B0a466
\t- 1155: 0x446DEab17dEC05B78a596cbAB6fbf31C9255da6d
- Pool: 0x5997f189Dc158B747CEBf7Bd6d6f7BF21e112185
  `;
  // \n- Pool: ${nftStakingPool.address}
  writeFile("out/DEPLOY.md", deploymentDetail, (err) => console.log({ err }));
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
