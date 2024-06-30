// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9;

contract exampleContract {
   address ownername;
   constructor() {
        ownername = msg.sender;
    }

    //view function only reads the value of the sender at the particular address//
    function viewFunc(address _address) view external returns (address){
        _address = ownername;
        return _address;
    }

    //pure function
    function pureFunc(uint x, uint y) pure external returns (uint) {
        return x + y;
    }
}

