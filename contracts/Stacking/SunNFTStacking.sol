// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../openzeppelin/contracts/access/Ownable.sol";
import "../openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "../openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "../openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "../openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "../openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "../openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol";

import "../Sun1155NFT.sol";
import "../Sun721NFT.sol";
import "../SunToken.sol";

import "./SunPool.sol";

contract StackingPool is ERC1155, Ownable, ERC1155Burnable, ERC1155Supply,ERC721Holder ,ERC1155Holder, StackPools{
    constructor() ERC1155("sun.city.pool") {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }



    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override( ERC1155, ERC1155Receiver) returns (bool) {
        return
            interfaceId == type(IERC1155).interfaceId ||
            interfaceId == type(IERC1155MetadataURI).interfaceId ||
            super.supportsInterface(interfaceId);
    }


    /*
    This act like creating a new stacking pool in which each user has a portion of pool by having value
    - value of one act a ticket to the pool
    - tickets can be transfered to next user if wanted 
    - id coresponds to a pool id 
    - each poolid is like a nft of it's own which mean it can store metadata :)
    */
    function Stack(uint256 PoolId ) public  {
        Pool storage pool = Pools[PoolId];
        SunToken20 token = SunToken20(pool.StackingToken);
        // Lock Tokens
        if (token.transferFrom(msg.sender, address(this), pool.tokensPerTicket) == true){
            this.safeTransferFrom(address(this), msg.sender, PoolId, 1,"");
        }
    }
    function UnStack(uint256 PoolId ,uint256 value) public  {
        unStack(msg.sender, PoolId,value);
    }
    function unStack(address account, uint256 PoolId ,uint256 value) private  {
        // Burning is not the best solution since it makes the unharested prize invalid ?)
        Pool storage pool = Pools[PoolId];
        require(this.balanceOf(account , PoolId) >= value,"insuffiant balance");
        SunToken20 token = SunToken20(pool.StackingToken);
        // Lock Tokens

        uint256 tokensToReturn = pool.tokensPerTicket * value;
        if (token.transfer(account, tokensToReturn) == true){
            // TODO - Chose one of belove , i don't know which one makes sense :)
            this.burn(account, PoolId, value);

            // this.safeTransferFrom(account , address(this), PoolId, 1,"");
        }
    }
    
    function HarvestMe(uint256 PoolId ) public  {
      Harvest(msg.sender, PoolId);
    }
    function HarvestAndUnstackMe(uint256 PoolId ) public  {
      Harvest(msg.sender, PoolId);
      unStack(msg.sender, PoolId,this.balanceOf(msg.sender,PoolId) );
    }
    // Only Famres user's prize
    function Harvest(address account , uint256 PoolId ) public  {
        Pool storage pool = Pools[PoolId];
        require(block.timestamp > pool.StartTime + pool.Duration, "Pool's Duration is not finished");
        for (uint i = 0; i < this.balanceOf(account,PoolId); i++) {
            for (uint j = 0; j < poolPrizes[PoolId].length; j++) {
                harvestPrizePool(account,poolPrizes[PoolId][j]);
            }       
        }
    }

    function CreatePool(uint256 PoolId, Pool memory pool,uint256[] memory prizes, bytes memory data)  public onlyOwner {
        NewPoolPolicy(PoolId , pool, prizes);
        _mint(address(this), PoolId, pool.TotalTicketCount, data);
    }

    // The following functions are overrides required by Solidity.
    function _beforeTokenTransfer(address operator, address from, address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        internal
        override(ERC1155, ERC1155Supply)
    {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
}
