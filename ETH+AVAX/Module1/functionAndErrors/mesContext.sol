// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract message {

    event msgLog(address Address, uint balance);

    mapping (address => uint) balances;
    function sendWei(uint val) public{
        balances[msg.sender] += val;
        uint updatedBalance = balances[msg.sender];
        emit msgLog(msg.sender, updatedBalance);
    }

    function viewBalance(address _address) public   returns  (uint) {
        uint myBalance = balances[_address];
        require(balances[_address] > 0, "No Wei received!");
        emit msgLog(_address, myBalance);
        return myBalance;
    }
}