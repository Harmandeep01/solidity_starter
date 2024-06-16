// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//Array Dynamic and Fixe size
//Initializations
//Insert (push), get, update, delete, pop, length
//Creating array in memory
//Returning array from function

contract Array {
    uint[] public nums = [1,2,3,4,5];
    uint[3] public numFixed = [4,5,6]; //FixedSizeArray

    event LogArrar(string message ,uint256 array);

    function examples() external {
        nums.push(2);
        uint x = nums[2]; //access element at 2
        nums[3] = 777;
        delete nums[1];
        nums.pop();
        uint len = nums.length;

        //create array in list
        uint[] memory arrayInMemory = new uint[](5);
        arrayInMemory[1] = 123;
         emit LogArrar("Hey!!ss",arrayInMemory[1]);
    }
}