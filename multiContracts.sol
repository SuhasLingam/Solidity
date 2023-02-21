//SPDX-License-Identifier: MIT

pragma solidity > 0.8.15;

contract Wallet {


    PaymentRecived public payment;

    function payContract() public payable {
        payment = new PaymentRecived(msg.value , msg.sender);
    }
}



contract PaymentRecived {
    uint public value;
    address public from;
    constructor(uint _value , address _from) {
        value = _value;
        from = _from;
    }
}