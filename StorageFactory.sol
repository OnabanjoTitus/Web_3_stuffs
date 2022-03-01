//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage[] public simpleStorageList;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage= new SimpleStorage();
        simpleStorageList.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public{
        //Address of the contract
        //ABI
        SimpleStorage(address(simpleStorageList[_simpleStorageIndex])).store(_simpleStorageNumber);
        
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
    
        return  SimpleStorage(address(simpleStorageList[_simpleStorageIndex])).retrieve();
    }

}