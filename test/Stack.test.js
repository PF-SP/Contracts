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
    //TODO - PoolCreation
    //TODO - TicketBuying
    //TODO - Stakeing
    //TODO - UnStakeing
    //TODO - Harvesting
    //TODO - Harvesting


    it("PrizePoolCreation", async function () {
        const PoolId = 1;
        const ticketCount = 50;
        const startingId = 1500;
        const endingId = 1500 + ticketCount;
        const ownerNfts = []
        for (let index = startingId; index < endingId; index++) {
            ownerNfts.push(
                await nft721.safeMint(config.poolOwner.address, index, "")
            )
        }
        await nft721.setApprovalForAll(Stakeing.address, true)
        await Stakeing.NewPrizePool(PoolId, {
            init: false,
            used: false,
            totalAmount: 0,
            perTicketAmount: 0,
            tokenType: 721,
            tokenContract: nft721.address,
            perTicketIdCount: 1,
            nftIdRangeEnd: endingId,
            nftIdRangeStart: startingId
        })

        //TODO - Add expect to these

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
        // -> BigNumber { value: "1" }
        await Stakeing.PrizePoolsIDs(0)
        // -> ... init: true
        await Stakeing.PrizePools(PoolId)
        // -> ... init: false
        await Stakeing.PrizePoolsIDs(156004)
        await Stakeing.PrizePoolsIDs(0)
        await Stakeing.PrizePoolsIDs(25004)
        // -> BigNumber { value: "ticketCount" }  
        await Stakeing.TicketCountById(PoolId)
        // -> BigNumber { value: "0" }  
        await nft721.balanceOf(owner.address)
        // -> BigNumber { value: "ticketCount" }  
        await nft721.balanceOf(Stakeing.address)
    });




});
