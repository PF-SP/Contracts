import { BigNumber } from "ethers";
import { ethers, network } from "hardhat";
import { open, writeFile } from "node:fs";

const gasDetails = {
  // gasLimit: "5000000",
  // gasPrice: "2000000000",
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
  const staking = await SunStakeingPool.deploy({ ...gasDetails });
  await staking.deployed();
  return staking;
}

async function main() {
  console.log(
    `${network.name} -> ${network.config.gasPrice} ${network.config.chainId}`,
  );
  // gasDetails.gasPrice = await ethers.get;
  // console.log({ gasDetails });
  console.log("deploying token ...");
  var token = await deployToken();
  console.log("StakingPool deploying ...\r");
  var nftStakingPool = await deployStakeingPool();
  console.log(`StakingPool ${nftStakingPool.address}\r`);
  console.log("deploying 721 nft ...");
  var nft721 = await deployNFT721();
  console.log("deploying 1155 nft ...");
  var nft1155 = await deployNFT1155();
  let deploymentDetail = `
# Deployed @ ${Date.now()} on ${network.name}\n
- SunToken: ${token.address}
- NFT:
\t- 721: ${nft721.address}
\t- 1155: ${nft1155.address}
\t- Pool: ${nftStakingPool.address}
  `;
  writeFile("out/DEPLOY.md", deploymentDetail, (err) => console.log({ err }));
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
