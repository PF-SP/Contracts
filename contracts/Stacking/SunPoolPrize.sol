// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../Sun1155NFT.sol";
import "../Sun721NFT.sol";
import "../SunToken.sol";



contract StakePoolPrize { 

    mapping (uint256 => PrizePool) public PrizePools;
    //Each address can harvest only once!
    //This is for not stealing other ppls assets
    mapping(address => mapping(uint256 => bool)) public HarvestedPrizes;
    mapping(uint256  => uint256) private LastHarvestedId;

    mapping (uint256 => uint256[]) internal NFT721ArrayOfIDs;

    uint256[] public PrizePoolsIDs;

    struct PrizePool {
        // To check if initated before or not 
        bool init;
        // each prize pool is unique and can only be accssed from one pool
        bool used;
        // Can Be either of (20,721,1155)
        uint16 tokenType;
        address tokenContract;
        // If prize is in 20
        uint256 totalAmount;
        uint256 perTicketAmount;
        // If is of type 721 
        // NOTE - Prize pool is range of ids that of identical nfts which are locked in contract in advance !
        // And Each user is prized with a range of ids
        // e.g.
        // - Prize Pool has 100 nfts which thier ids are from 1...100
        // - Each ticket wins 2 ids
        // - ticket 1 -> nft-id 1 & nft-id 2  
        // - ticket 2 -> nft-id 3 & nft-id 4
        // - one ticket ??? 
        uint256 perTicketIdCount;
        uint256 nftIdRangeStart;
        uint256 nftIdRangeEnd;
        // mapping (address => bool) harvested;
        // if Token is 1155
        // Which in my mind should always be 100% share of that perticular nft ...
        // ranges from 1 ... 100
        // 1 : represents nft's totalSupply / 100 -> per ticket
        // 100 : represents nft's totalSupply / 1 -> per ticket 
        uint256 nft1155Id;
        uint256 totalNFTValue;
        uint256 perTicketNFTShareCount;
    }

    function TicketCountById(uint256 PoolId) public view returns (uint256) {
        return TicketCount(PrizePools[PoolId]);
    }
    function TicketCount(PrizePool memory prize) public view returns (uint256) {
        if (prize.tokenType == 0){
            revert("Prize Pool Not Found!");
        }else if (prize.tokenType == 20){
            require(prize.perTicketAmount > 0, "Expected Prize per ticket to be more than 0") ;
            require(prize.totalAmount > 0, "Expected total prize to be more than 0") ;
            return prize.totalAmount  /  (prize.perTicketAmount  );
        }else if (prize.tokenType == 721){
            require(prize.perTicketIdCount > 0, "Expected perTicketIdCount to be more than 0") ;
            require(prize.nftIdRangeStart >= 0, "Expected  nftIdRangeStart to be more than 0") ;
            require(prize.nftIdRangeEnd > prize.nftIdRangeStart, "Expected nftIdRangeEnd to be more than nftIdRangeStart") ;
            return  ( prize.nftIdRangeEnd - prize.nftIdRangeStart )  / (prize.perTicketIdCount );
        }else if (prize.tokenType == 1155 ){
            return prize.totalNFTValue  / prize.perTicketNFTShareCount;
        }
        revert("Bad token type, Can be one of (20,721,1155)");
    }

    function lockERC20Tokens(address tokenAddr, uint256 amount )  private {
        SunToken20 sunToken = SunToken20(address(tokenAddr)); 
        sunToken.transferFrom(msg.sender, address(this),amount);
    }
    function lockERC721Tokens(address nftAddr, uint256  startingId, uint256  endingId )  private {
        SunToken721 nft = SunToken721(address(nftAddr)); 
        uint256[] memory  ids = new uint256[](endingId - startingId);
        for (uint i = startingId; i < endingId; i++) {
            ids[i - startingId] = i;
        }
        for (uint i = 0; i < ids.length; i++) {
            nft.safeTransferFrom(msg.sender, address(this), ids[i]);
        }
    }

    function lockERC1155Tokens(address _address, uint256  _id, uint256  value)  private {
        SunToken1155 nft = SunToken1155(address(_address)); 
        nft.safeTransferFrom(msg.sender,address(this), _id,value, "");
    }


    // this a dangerous funcion since it havrest without any checks 
    function harvestPrizePool(address account,uint256 PoolPrizeId , address recipient) internal {
        require(!HarvestedPrizes[account][PoolPrizeId], "Already harvested ");
        PrizePool storage prize = PrizePools[PoolPrizeId];
        require(prize.init, "prize pool does not exists ");
        require(prize.used, "prize pool is not used by any pools ");
        HarvestedPrizes[account][PoolPrizeId] = true;
        if (prize.tokenType == 20) {
            SunToken20(prize.tokenContract).transfer(recipient, prize.perTicketAmount);
        }if (prize.tokenType == 721) {
            if (LastHarvestedId[PoolPrizeId] == 0) {
                LastHarvestedId[PoolPrizeId] = prize.nftIdRangeStart;
            }
            for (uint i = 0 ; i < prize.perTicketIdCount; i++) {
                SunToken721(prize.tokenContract).transferFrom(address(this), recipient,  LastHarvestedId[PoolPrizeId] + i);
            }
            LastHarvestedId[PoolPrizeId] += prize.perTicketIdCount;
        }if (prize.tokenType == 1155) {
            SunToken1155 nft = SunToken1155(prize.tokenContract);
            nft.safeTransferFrom(address(this) , recipient,  prize.nft1155Id, prize.perTicketNFTShareCount, "") ;
        }
    }

    function NewPrizePool(uint256 PrizePoolId, PrizePool memory prize) public {
        require(!(PrizePools[PrizePoolId].init));
        require(TicketCount(prize) > 1 , "No Ticket can be accpeted with given struct !");
        // Transfer nfts and lock them
        if (prize.tokenType == 20){
            lockERC20Tokens(prize.tokenContract,prize.totalAmount);
        }else if (prize.tokenType == 721  ){
            lockERC721Tokens(prize.tokenContract,prize.nftIdRangeStart, prize.nftIdRangeEnd);
        }else if (prize.tokenType == 1155  ){
            lockERC1155Tokens(prize.tokenContract,prize.nft1155Id,prize.totalNFTValue);
        }
        prize.init = true;
        prize.used = false;
        PrizePoolsIDs.push(PrizePoolId);
        PrizePools[PrizePoolId] = prize;
    }

}