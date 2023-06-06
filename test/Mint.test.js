const { expect } = require("chai");
const hre = require("hardhat");

var DeployedNFTAddress = "";
var NFT = null;
var nft = null;

describe("NFT-User", function () {
  this.beforeAll("Compile-Contract", async function () {
    NFT = await hre.ethers.getContractFactory("SunToken721");
    nft = await NFT.deploy("SunCity", "SUN");
    expect(await nft.deployed).to.not.null;
    expect(nft.address).to.match(/^0x/);
    console.log(`Setting Global NFT Address to ${nft.address}`);
    DeployedNFTAddress = nft.address;
  });

  it("Mint NFT", async function () {
    // nft["safeMint(address,uint256,string)"]
    const [owner, User] = await hre.ethers.getSigners();
    var error = null;
    const NFT_ID = 1
    const NFT_URL = "https://picsum.photos/200"
    var tx = null
    try {
      tx = await nft.safeMint(User.address, NFT_ID, NFT_URL)
    } catch (error) {
      expect(error).to.be.null;
    }
    expect(tx.hash).to.not.undefined;
    expect(tx.hash).to.not.null;
    // console.log(`${owner.address} Minted Nft with id ${NFT_ID} For ${User.address} : ${tx.hash}`)
  });

  it("Burn NFT", async function () {
    // nft["safeMint(address,uint256,string)"]
    // nft["burn(uint256)"]
    const [owner, User, User2] = await hre.ethers.getSigners();

    const NFT_ID = 2
    const NFT_URL = "https://picsum.photos/200"
    const mintTx = await nft.safeMint(User.address, NFT_ID, NFT_URL)
    // console.log(`${owner.address} Minted Nft with id ${NFT_ID} For ${User.address} : ${mintTx.hash}`)
    expect(mintTx.hash).to.not.undefined;
    expect(mintTx.hash).to.not.null;

    try {
      const highjackTx = await nft.connect(User2).burn(NFT_ID)
    } catch (error) {
      // TODO -Check For Contract Logic Error ... {Bad Ownership :)}
      expect(error).not.be.null;
    }
    const burnTx = await nft.connect(User).burn(NFT_ID)
    expect(burnTx.hash).to.not.undefined;
    expect(burnTx.hash).to.not.null;
    // console.log(`${User.address} Burnt Nft with id ${NFT_ID}  : ${mintTx.hash}`)
  });

  //TODO Check URL changes
  //TODO Check URL assignment
  //TODO Check Transfer
  //TODO Check Ownership
  //TODO Check TransferOwnership


});
