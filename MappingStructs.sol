//SPDX-License-Identifier: MIT

pragma solidity > 0.8.15;

contract MappingStructExample {

    struct Students {
        string name;
        bool exam;
        uint age;
    }


    mapping (uint => Students) public studentMap;

    function myfunc(uint _index , string memory _name , bool _exam , uint _age) public payable {
        
        studentMap[_index] = Students(_name , _exam , _age);

    }

}