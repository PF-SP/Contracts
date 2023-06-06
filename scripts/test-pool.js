// async function run() {

const [owner, u1, u2] = await hre.ethers.getSigners();

NFT721 = await hre.ethers.getContractFactory("SunToken721");
nft721 = await NFT721.deploy("SunCity", "SUN");

NFT1155 = await hre.ethers.getContractFactory("SunToken1155");
nft1155 = await NFT1155.deploy();


const ownerNfts = []
for (let index = 0; index < 10; index++) {
    ownerNfts.push(
        await nft721.safeMint(owner.address, index, "")
    )
}

Stacking = await hre.ethers.getContractFactory("StackingPool");
stacking = await Stacking.deploy();

await nft721.setApprovalForAll(stacking.address, true)

// -> BigNumber { value: "3" }  
await stacking.TicketCount({
    init: false,
    used: false,
    totalAmount: 0,
    perTicketAmount: 0,
    tokenType: 721,
    tokenContract: nft721.address,
    perTicketIdCount: 1,
    nftIdRangeEnd: 4,
    nftIdRangeStart: 1
})

await stacking.NewPrizePool(1, {
    init: false,
    used: false,
    totalAmount: 0,
    perTicketAmount: 0,
    tokenType: 721,
    tokenContract: nft721.address,
    perTicketIdCount: 1,
    nftIdRangeEnd: 10,
    nftIdRangeStart: 0
})

//TODO - Add expect to these
// -> BigNumber { value: "1" }
await stacking.PrizePoolsIDs(0)
// -> ... init: true
await stacking.PrizePoolsIDs(1)
// -> ... init: false
await stacking.PrizePoolsIDs(1564)
await stacking.PrizePoolsIDs(0)
await stacking.PrizePoolsIDs(254)

// -> BigNumber { value: "100" }  
await stacking.TicketCountById(1)
// -> BigNumber { value: "0" }  
await nft721.balanceOf(owner.address)
// -> BigNumber { value: "100" }  
await nft721.balanceOf(stacking.address)


//////////////////////////////////////////


// Token = await hre.ethers.getContractFactory("SunToken20");
// token = await Token.deploy("SunCity", "SUN");


// var pool = {
//     Name: "test",
//     StartTime: Math.ceil(Date.now() / 1000),
//     Duration: 1000,
//     TotalTicketCount: 10,
//     StackingToken: token.address,
//     tokensPerTicket: 300,
//     init:false,
// }

// // await stacking.SetPoolPrize(10, prizes)
// await stacking.NewPoolPolicy(10, pool , [1])
// await stacking.Pools(10)

// //Should fail since prize is used by another pool
// await stacking.NewPoolPolicy(11, pool , [1])
// //Should fail since prize non existant
// await stacking.NewPoolPolicy(11, pool , [2,3])


////////////////////////////////////////


Token = await hre.ethers.getContractFactory("SunToken20");
token = await Token.deploy("SunCity", "SUN");


var pool = {
    Name: "test",
    StartTime: Math.ceil(Date.now() / 1000) + 10,
    Duration: 25,
    TotalTicketCount: 10,
    StackingToken: token.address,
    tokensPerTicket: 300,
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
}, 35 * 1000);
        // //Should fail since prize is used by another pool
        // await stacking.NewPoolPolicy(11, pool , [1])
        // //Should fail since prize non existant
        // await stacking.NewPoolPolicy(11, pool , [2,3])


