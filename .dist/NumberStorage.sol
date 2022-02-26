pragma solidity ^0.6.0;

contract SimpleStorage{
    
   
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber)public{
       favouriteNumber=_favouriteNumber;


    }
    


}
