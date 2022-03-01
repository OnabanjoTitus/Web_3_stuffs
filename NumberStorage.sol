//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{
    
    // // this will be initialized to 0
    // // this will be initialized to 0
    uint256 favouriteNumber;

    function store(uint256 _favouriteNumber)public{
       favouriteNumber=_favouriteNumber;
    }
    //retrieve
    function retrieve()public view returns(uint256) {
        return favouriteNumber;
    }

    //perform a non saving operation
    function retrieve(uint256 _favouriteNumber)public view returns(uint256) {   
        return favouriteNumber+_favouriteNumber;
    }

    struct People{
        uint256 favouriteNumber;
        string name;
    }
    mapping(string=>uint256)public nameToFavoriteNumber;
    People public person=People({favouriteNumber:2,name:"Titus"});

    People[]public people;

    function addPerson(string memory _name,uint256 _favouriteNumber)public{


    people.push(People({favouriteNumber:_favouriteNumber,name:_name}));
    nameToFavoriteNumber[_name]=_favouriteNumber;
    //or
    // people.push(People(_favouriteNumber,_name));

}

}
