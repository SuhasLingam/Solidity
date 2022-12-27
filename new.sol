//SPDX-License-Identifier: MIT

pragma solidity >0.8.13;


contract MyContract {


    uint MyValue;
    string str1;
    string str2;

    receive() external payable {

        MyValue = msg.value;
        str1 = "Receive Function";
    }

    fallback() external payable {
        MyValue = msg.value;
        str2 = "Fallback Function";
    }


}