// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract exampleContract{
    uint incCount;
    function inc() external {
        incCount += 1;
    }

    //returning the incCount variable's current state //
    function count() view external returns (uint) {
            return incCount;
    }
}