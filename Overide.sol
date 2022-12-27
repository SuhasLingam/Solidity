// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract Override {


    string public Mystring;

    uint totat_eth;

    function ChangeString(uint tot ,string memory _newstring) public {
        totat_eth = tot;
        if(tot < 1)
        Mystring = _newstring;
    } 
}