//SPDX-License-Identifier: MIT

pragma solidity > 0.8.14;


contract Wallet {

    struct myStruct {
            uint value;
            address from;
    }

    myStruct public payment;

    function payContract() public payable {
        //Structures can be used in 2 ways:
        //first way
        // myStruct = payable(msg.value , msg.sender); 

        //second way


        payment.value = msg.value;
        payment.from = msg.sender;
    }

}