//SPDX-License-Identifier: UNIDENTIFIED

pragma solidity >0.7.0;


contract Exceptionsrequire {

    mapping (address => uint) public BalanceRecived;
    

    function Deposit() public payable {
        BalanceRecived[msg.sender] += msg.value;
    }

    function withdraw(address payable _to , uint _amount) public {
        
       // if(_amount <= BalanceRecived[msg.sender]) { ---- } instead of if() we use require 

        require(_amount <= BalanceRecived[msg.sender], "Cannot Transfer Funds , Not Enough !!!");
        BalanceRecived[msg.sender] -= _amount;
        _to.transfer(_amount);
        
        
    }
    
}
