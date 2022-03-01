// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

contract Overflow{

    function overflow() public view returns(uint8){
        //Integers reset once we reach the maximum cap
        uint8 big =255 + uint8(100);
        return big;

    }


}