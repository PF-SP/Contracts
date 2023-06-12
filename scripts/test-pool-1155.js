// async function run() {

const [owner, u1, u2] = await hre.ethers.getSigners();

NFT721 = await hre.ethers.getContractFactory("SunToken721");
nft721 = await NFT721.deploy("SunCity", "SUN");

NFT1155 = await hre.ethers.getContractFactory("SunToken1155");
nft1155 = await NFT1155.deploy();

NFTIndex = 25

await nft1155.mint(owner.address, NFTIndex, 10000000000, "0x")

Stacking = await hre.ethers.getContractFactory("StackingPool");
stacking = await Stacking.deploy();

await nft1155.setApprovalForAll(stacking.address, true)

prize = {
    init: false,
    used: false,
    tokenType: "1155",
    tokenContract: nft1155.address,
    perTicketIdCount: "0",
    nftIdRangeStart: "0",
    nftIdRangeEnd: "0",
    totalAmount: 0,
    perTicketAmount: 0,
    nft1155Id: NFTIndex,
    perTicketNFTShareCount: 10,
    totalNFTValue: 10000000000
}
// -> BigNumber { value: "1000000000" }
await stacking.TicketCount(prize)
await stacking.NewPrizePool(1, prize)

//TODO - Add expect to these
// -> BigNumber { value: "1" }
await stacking.PrizePoolsIDs(0)

// -> BigNumber { value: "1000000000" } 
await stacking.TicketCountById(1)

// ->  BigNumber { value: "100" } 
await nft1155.balanceOf(owner.address, NFTIndex)
// -> BigNumber { value: "10000000000" }
await nft1155.balanceOf(stacking.address, NFTIndex)


////////////////////////////////////////


Token = await hre.ethers.getContractFactory("SunToken20");
token = await Token.deploy("SunCity", "SUN");


var pool = {
    Name: "test",
    StartTime: Math.ceil(Date.now() / 1000) + 100,
    Duration: 100,
    TotalTicketCount: "1000000000",
    StackingToken: token.address,
    tokensPerTicket: 10000,
    init: false,
}

// await stacking.SetPoolPrize(10, prizes)
await stacking.CreatePool(10, pool, [1], "0x")
await stacking.Pools(10)


var before = {
    stackNfts: await stacking.balanceOf(stacking.address, 10),
    stakeTokens: await token.balanceOf(stacking.address),
    ownerNfts: await stacking.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}

//User Buys two tickets 
await token.approve(stacking.address, "100000000000000000000")
await stacking.Stack(10)
await token.approve(stacking.address, "100000000000000000000")
await stacking.Stack(10)

var after = {
    stackNfts: await stacking.balanceOf(stacking.address, 10),
    stakeTokens: await token.balanceOf(stacking.address),
    ownerNfts: await stacking.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}

console.log({ before, after })

// Immediate response should be failed due to pool not finished
await stacking.HarvestMe(10)


var before = {
    stackNfts: await stacking.balanceOf(stacking.address, 10),
    stakeTokens: await token.balanceOf(stacking.address),
    ownerNfts: await stacking.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}
//User Wants to unstack hence burning it's nft value (aka tickets)
await stacking.UnStack(10, 1)
var after = {
    stackNfts: await stacking.balanceOf(stacking.address, 10),
    stakeTokens: await token.balanceOf(stacking.address),
    ownerNfts: await stacking.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}
console.log({ before, after })

await stacking.HarvestedPrizes(owner.address, 1)

setTimeout(async () => {
    var before = {
        stackTickets: await stacking.balanceOf(stacking.address, 10),
        stakeTokens: await token.balanceOf(stacking.address),
        ownerTickets: await stacking.balanceOf(owner.address, 10),
        ownerTokens: await token.balanceOf(owner.address),
        ownerPrizeNft: await nft721.balanceOf(owner.address)
    }

    await stacking.HarvestAndUnstackMe(10)

    var after = {
        stackNfts: await stacking.balanceOf(stacking.address, 10),
        stakeTokens: await token.balanceOf(stacking.address),
        ownerNfts: await stacking.balanceOf(owner.address, 10),
        ownerTokens: await token.balanceOf(owner.address),
        ownerPrizeNft: await nft721.balanceOf(owner.address)
    }

    console.log({ before, after })
}, (100 + 100) * 1000);
