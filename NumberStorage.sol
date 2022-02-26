pragma solidity ^0.6.0;

contract NumberStorage{
    
   
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber)public{
       favouriteNumber=_favouriteNumber;


    }
    


}
