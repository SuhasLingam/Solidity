// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newListOfSimpleStorageContracts = new SimpleStorage();
        listOfSimpleStorageContracts.push( newListOfSimpleStorageContracts );
    }


    function sfStore( uint256 _simpleStorageIndex , uint256 _newSimpleStorageNumber) public  {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfStoreView(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].favNumber();
    }

}
