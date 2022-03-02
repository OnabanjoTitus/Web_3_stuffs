// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;
import "@chainlink/contracts/src/v0.6/interfaces/SafeMathChainlink.sol";

contract Overflow{
    using SafeMathChainlink for uint256;
    
    function overflow() public view returns(uint8){
        //Integers reset once we reach the maximum cap
        uint8 big =255 + uint8(100);
        return big;

    }


}