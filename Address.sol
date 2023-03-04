// SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.8.12;

contract aboutAddress {

    address public Myaddress;

    function NewAddress(address _newAdd) public {           // To Change Address
        Myaddress = _newAdd;
    }
    
    
    
    
    function CheckBalance() public view returns(uint){
        return Myaddress.balance;
    }
}
