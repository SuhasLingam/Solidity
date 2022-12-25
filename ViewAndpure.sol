// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract ViewAndPure {

    uint public Number;

    function newNum(uint num) public {
       Number = num;
    }
    //calling View function

    function Viewfunc() public view returns(uint) {
        return Number;
    }


    //calling Pure Function

    function pureFunc(uint a , uint b) public pure returns(uint) {
        return a+b;
    }

}