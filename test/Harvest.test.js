const { expect } = require("chai");
const hre = require("hardhat");

const configs = {
    Stakeing: null,
    token: null,
    nft721: null,
    nft1155: null,
    poolOwner: null,
    goodActor: null,
    badActor: null,
}


describe("StakeingPool", function () {
    this.beforeAll("Setup", async function () {

        const [owner, u1, u2] = await hre.ethers.getSigners();

        Stakeing = await hre.ethers.getContractFactory("StakeingPool");
        Stakeing = await Stakeing.deploy();

        NFT721 = await hre.ethers.getContractFactory("SunToken721");
        nft721 = await NFT721.deploy("SunCity", "SUN");

        NFT1155 = await hre.ethers.getContractFactory("SunToken1155");
        nft1155 = await NFT1155.deploy();


        Token = await hre.ethers.getContractFactory("SunToken20");
        token = await Token.deploy("SunCity", "SUN");

        configs.badActor = u2;
        configs.goodActor = u1;
        configs.poolOwner = owner;
        configs.Stakeing = Stakeing;
        configs.token = token;
        configs.nft1155 = nft1155;
        configs.nft721 = nft721;


    });


    // LINK - Tests are as follows :
    // // TODO - PrizePoolCreation
    // //TODO - PoolCreation
    // //TODO - TicketBuying
    // //TODO - Stakeing
    // //TODO - UnStakeing
    // //TODO - Harvesting


    it("PrizePoolCreation", async function () {// async function run() {

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

        Stakeing = await hre.ethers.getContractFactory("StakeingPool");
        Stakeing = await Stakeing.deploy();

        await nft721.setApprovalForAll(Stakeing.address, true)

        // -> BigNumber { value: "3" }  
        await Stakeing.TicketCount({
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

        await Stakeing.NewPrizePool(1, {
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
        await Stakeing.PrizePoolsIDs(0)
        // -> ... init: true
        await Stakeing.PrizePoolsIDs(1)
        // -> ... init: false
        await Stakeing.PrizePoolsIDs(1564)
        await Stakeing.PrizePoolsIDs(0)
        await Stakeing.PrizePoolsIDs(254)

        // -> BigNumber { value: "100" }  
        await Stakeing.TicketCountById(1)
        // -> BigNumber { value: "0" }  
        await nft721.balanceOf(owner.address)
        // -> BigNumber { value: "100" }  
        await nft721.balanceOf(Stakeing.address)


        //////////////////////////////////////////


        // Token = await hre.ethers.getContractFactory("SunToken20");
        // token = await Token.deploy("SunCity", "SUN");


        // var pool = {
        //     Name: "test",
        //     StartTime: Math.ceil(Date.now() / 1000),
        //     Duration: 1000,
        //     TotalTicketCount: 10,
        //     StakeingToken: token.address,
        //     tokensPerTicket: 300,
        //     init:false,
        // }

        // // await Stakeing.SetPoolPrize(10, prizes)
        // await Stakeing.NewPoolPolicy(10, pool , [1])
        // await Stakeing.Pools(10)

        // //Should fail since prize is used by another pool
        // await Stakeing.NewPoolPolicy(11, pool , [1])
        // //Should fail since prize non existant
        // await Stakeing.NewPoolPolicy(11, pool , [2,3])


        ////////////////////////////////////////


        Token = await hre.ethers.getContractFactory("SunToken20");
        token = await Token.deploy("SunCity", "SUN");


        var pool = {
            Name: "test",
            StartTime: Math.ceil(Date.now() / 1000) + 10,
            Duration: 25,
            TotalTicketCount: 10,
            StakeingToken: token.address,
            tokensPerTicket: 300,
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


        var before = {
            StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
            stakeTokens: await token.balanceOf(Stakeing.address),
            ownerNfts: await Stakeing.balanceOf(owner.address, 10),
            ownerTokens: await token.balanceOf(owner.address),
        }
        //User Wants to unStake hence burning it's nft value (aka tickets)
        await Stakeing.UnStake(10, 1)
        var after = {
            StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
            stakeTokens: await token.balanceOf(Stakeing.address),
            ownerNfts: await Stakeing.balanceOf(owner.address, 10),
            ownerTokens: await token.balanceOf(owner.address),
        }
        console.log({ before, after })

        await Stakeing.HarvestedPrizes(owner.address, 1)

        setTimeout(async () => {
            var before = {
                StakeTickets: await Stakeing.balanceOf(Stakeing.address, 10),
                stakeTokens: await token.balanceOf(Stakeing.address),
                ownerTickets: await Stakeing.balanceOf(owner.address, 10),
                ownerTokens: await token.balanceOf(owner.address),
                ownerPrizeNft: await nft721.balanceOf(owner.address)
            }

            await Stakeing.HarvestAndUnStakeMe(10)

            var after = {
                StakeNfts: await Stakeing.balanceOf(Stakeing.address, 10),
                stakeTokens: await token.balanceOf(Stakeing.address),
                ownerNfts: await Stakeing.balanceOf(owner.address, 10),
                ownerTokens: await token.balanceOf(owner.address),
                ownerPrizeNft: await nft721.balanceOf(owner.address)
            }

            console.log({ before, after })
        }, 35 * 1000);
        // //Should fail since prize is used by another pool
        // await Stakeing.NewPoolPolicy(11, pool , [1])
        // //Should fail since prize non existant
        // await Stakeing.NewPoolPolicy(11, pool , [2,3])



    });




});
