//SPDX-License-Identifier: MIT

pragma solidity >0.7.0;



contract RevertExample {

    address public owner;
    uint public number;

    constructor() {
        owner = msg.sender;
        number = 25;
    }

    function ThisOwner() public payable { 

        if(owner != msg.sender) {
            revert("You are not the Owner");
        }

        number = number - 5;

    }

}