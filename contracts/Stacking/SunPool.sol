// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


import "./SunPoolPrize.sol";
import "../SunToken.sol";
import "../openzeppelin/contracts/access/Ownable.sol";

contract StakePools is StakePoolPrize { 

    // enum PoolState { Created, Locked, Paused } // Enum
    
    mapping (uint256 => Pool) public Pools;
    mapping (uint256 => uint256[]) internal poolPrizes;
    uint256[] public PoolsIDs;


    struct Pool { 
        string Name ;
        uint256 StartTime ; 
        uint256 Duration ; 
        uint256 TotalTicketCount;
        address StakeingToken;
        uint256 tokensPerTicket;
        // refers to prize mapping!;
        // Aparently solidity does not support this feature yet :)  
        // uint256[] prizes;
        bool init;
    }


    function CheckPrizePool(uint256[] memory prizes ,Pool memory pool) public view returns (bool) {
        for (uint i = 0; i < prizes.length; i++) {
            if (PrizePools[prizes[i]].used){
                return false;
            }
            if (pool.TotalTicketCount != TicketCountById(prizes[i])){
                return false;
            }
        }
        return true;
    }

    function NewPoolPolicy(uint256 PoolId ,Pool memory pool, uint256[] memory prizes) public {
        // poolPrizes[PoolId] = prizes;
        // uint256[] memory prizes = poolPrizes[PoolId]; 
        // TODO - double check this ....
        // require(block.timestamp >= pool.StartTime && pool.Duration >= 15, "Times set for pool does not make sense :(");
        require(!(Pools[PoolId].init), "pool with the same id exists");
        require(pool.TotalTicketCount > 1 , "No Ticket can be accpeted with given struct !");
        require(CheckPrizePool(prizes,pool) , "Either one of the prize pools TicketCount missmatch or is used by another pool or non existant!");
        // Set prize pool used 
        poolPrizes[PoolId] = prizes;
        for (uint i = 0; i < prizes.length; i++) {
            PrizePools[prizes[i]].used = true;
        }
        
        pool.init = true;
        PoolsIDs.push(PoolId);
        Pools[PoolId] = pool;
    }


}