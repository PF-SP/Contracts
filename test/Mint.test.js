const { expect } = require("chai");
const hre = require("hardhat");

describe("NFT", function () {
  it("Should be able to mint nfts", async function () {
    const NFT = await hre.ethers.getContractFactory("SunNFT");
    const nft = await NFT.deploy("SunCity", "SUN");
    expect(await nft.deployed).to.not.null;
  });
});
