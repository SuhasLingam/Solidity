// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract Strings {

    string public Mystring;

    function ChangedString(string memory _NewString) public {
        Mystring = _NewString;
    }

}