// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    address public owner;
    uint256 minimunNumber = 5e18; 

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(convertPrice(msg.value) >= minimunNumber , "insuffitent funds tranfered");
    }   


    function getPrice() public view returns(uint256) {
        //Address = 0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI
        AggregatorV3Interface priceFeeds = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 answer, , , ) = priceFeeds.latestRoundData();
        return uint256(answer * 1e10);
        
    }


    function convertPrice(uint256 ethAmount) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethPriceInUsd = (ethPrice * ethAmount) / 1e18;
        return ethPriceInUsd;
    }
}
