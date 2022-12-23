// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract aboutAddress {

    address public Myaddress;

    function NewAddress(address _Newadd) public {
        Myaddress = _Newadd;
    } 

    function Messenger() public {
        Myaddress = msg.sender;
    }
}