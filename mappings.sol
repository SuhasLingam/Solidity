//SPDX-License-Identifier: MIT
pragma solidity >=0.8.14;
contract Mycontract {
    mapping(uint => string) public myMapping;

    function map(uint _key , string memory _str) public {
        myMapping[_key] = _str;
    }
}
