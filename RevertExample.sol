//SPDX-License-Identifier: MIT

pragma solidity >0.7.0;



contract RevertExample {

    address public owner = msg.sender;
    uint public number;

    constructor() {
        number = 25;
    }

    function ThisOwner() public payable { 

        if(owner != msg.sender) {
            revert("You are not the Owner");
        }

        number = number - 5;

    }

}