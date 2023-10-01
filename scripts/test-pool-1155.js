const [owner, u1, u2] = await hre.ethers.getSigners();

NFT721 = await hre.ethers.getContractFactory("SunToken721");
nft721 = await NFT721.deploy("SunCity", "SUN");

NFT1155 = await hre.ethers.getContractFactory("SunToken1155");
nft1155 = await NFT1155.deploy("SunCity", "SUN");

NFTIndex = 25

await nft1155.mint(owner.address, NFTIndex, 10000000000, "0x")

Stakeing = await hre.ethers.getContractFactory("StakeingPool");
Stakeing = await Stakeing.deploy("SunCity", "SUN");

await nft1155.setApprovalForAll(Stakeing.address, true)

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
await Stakeing.TicketCount(prize)
await Stakeing.NewPrizePool(1, prize)

//TODO - Add expect to these
// -> BigNumber { value: "1" }
await Stakeing.PrizePoolsIDs(0)

// -> BigNumber { value: "1000000000" } 
await Stakeing.TicketCountById(1)

// ->  BigNumber { value: "100" } 
await nft1155.balanceOf(owner.address, NFTIndex)
// -> BigNumber { value: "10000000000" }
await nft1155.balanceOf(Stakeing.address, NFTIndex)


////////////////////////////////////////


Token = await hre.ethers.getContractFactory("SunToken20");
token = await Token.deploy("SunCity", "SUN");


var pool = {
    Name: "test",
    StartTime: Math.ceil(Date.now() / 1000) + 5,
    Duration: 2,
    TotalTicketCount: "1000000000",
    StakeingToken: token.address,
    tokensPerTicket: 10000,
    init: false,
}

// await Stakeing.SetPoolPrize(10, prizes)
await Stakeing.CreatePool(10, pool, [1], "0x")
await Stakeing.Pools(10)


var before = {
    StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
    stakeTokens: await token.balanceOf(Stakeing.address),
    ownerNfts: await Stakeing.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}

//User Buys two tickets 
await token.approve(Stakeing.address, "100000000000000000000")
await Stakeing.Stake(10)
await token.approve(Stakeing.address, "100000000000000000000")
await Stakeing.Stake(10)

var after = {
    StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
    stakeTokens: await token.balanceOf(Stakeing.address),
    ownerNfts: await Stakeing.balanceOf(owner.address, 10),
    ownerTokens: await token.balanceOf(owner.address),
}

console.log({ before, after })

// Immediate response should be failed due to pool not finished
await Stakeing.HarvestMe(10)

//
// var before = {
//     StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
//     stakeTokens: await token.balanceOf(Stakeing.address),
//     ownerNfts: await Stakeing.balanceOf(owner.address, 10),
//     ownerTokens: await token.balanceOf(owner.address),
// }
// //User Wants to unStake hence burning it's nft value (aka tickets)
// await Stakeing.UnStake(10, 1)
// var after = {
//     StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
//     stakeTokens: await token.balanceOf(Stakeing.address),
//     ownerNfts: await Stakeing.balanceOf(owner.address, 10),
//     ownerTokens: await token.balanceOf(owner.address),
// }
// console.log({ before, after })

await Stakeing.HarvestedPrizes(owner.address, 1)

setTimeout(async () => {
    var before = {
        StakeTickets: await Stakeing.balanceOf(Stakeing.address, 10),
        stakeTokens: await token.balanceOf(Stakeing.address),
        ownerTickets: await Stakeing.balanceOf(owner.address, 10),
        ownerTokens: await token.balanceOf(owner.address),
        ownerPrize721Nft: await nft721.balanceOf(owner.address),
        ownerPrize1155Nft: await nft1155.balanceOf(owner.address, NFTIndex)
    }

    await Stakeing.HarvestAndUnStakeMe(10)

    var after = {
        StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
        stakeTokens: await token.balanceOf(Stakeing.address),
        ownerNfts: await Stakeing.balanceOf(owner.address, 10),
        ownerTokens: await token.balanceOf(owner.address),
        ownerPrizeNft: await nft721.balanceOf(owner.address),
        ownerPrize1155Nft: await nft1155.balanceOf(owner.address, NFTIndex)

    }

    console.log({ before, after })
}, 10000);
