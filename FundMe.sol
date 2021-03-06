// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract FundMe{


    mapping(address => uint256) public addressToAmountFunded;
    function fund() public payable{
        //$50
        uint256 minimumUSD =50 * 10 ** 18;
        require(getConversionRate(msg.value)>=minimumUSD, "You need to spend more ETH!");
        addressToAmountFunded[msg.sender]+=msg.value;
        //what the ETH -> USD conversion rate
     }
     function getVersion() public view returns(uint256){
         AggregatorV3Interface priceFeed = 
         AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e); 
         return priceFeed.version();

     }

     function getPrice() public view returns(uint256){
         AggregatorV3Interface priceFeed = 
         AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e); 
            (,int256 answer,,,
            )=priceFeed.latestRoundData();
            return uint256(answer * 10000000000);
            

     }


    function getConversionRate(uint256 amount) public view returns(uint256){
        uint256 ethPrice= getPrice();
        uint256 ethAmountInUSD=(ethPrice * amount)/1000000000000000000;
        // 1000000000000000000
        return ethAmountInUSD;
        //0.000002967294590160


    }
}