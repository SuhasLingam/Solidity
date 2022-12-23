// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract ViewAndPure {

    uint256 public Number;

    function newNum(uint256 num) public {
       Number = num;
    }
    //calling View function

    function Viewfunc() public view returns(uint) {
        return Number;
    }


    //calling Pure Function

    function pureFunc(uint256 a , uint256 b) public pure returns(uint256) {
        return a+b;
    }

}