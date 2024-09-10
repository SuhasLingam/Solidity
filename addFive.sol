// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { SimpleStorage } from "./SimpleStorage.sol";

contract addFiveToSimpleStorage is SimpleStorage {

    function store(uint256 _newNumber) public override {
        favNumber = _newNumber + 5;
    }

}