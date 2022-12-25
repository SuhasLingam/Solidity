// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract Override {


    string public Mystring;

    
    function ChangeString(string memory _newstring) public payable {
        if(msg.value <= 5 ether)
        Mystring = _newstring;
        else 
        {
            payable(msg.sender).transfer(msg.value);  // if ether greater than 5 / wrong digital currency then it will return the amount . 
        }
    } 
}