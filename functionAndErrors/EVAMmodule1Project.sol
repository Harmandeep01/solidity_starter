// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract errorHandling{
    event msgLog(string Log, uint amount, address from, address to );
    mapping (address => uint) balances;

    function viewBalance(address _address) view  external returns (uint){
        return balances[_address];
    }

    function addMoney(address _address, uint amount) external {
        balances[_address] += amount;
    }

    function withdrawMoney(address _address, uint amount) payable  external {
        require(balances[_address] > 10, "Balance shoould not less than 10 wei"); //Require Function
        
        balances[address(this)] -= amount;

        uint finalBalance = balances[address(this)];
        if (finalBalance >= 10) {
            assert(finalBalance >= 10);
        }
        else {
            revert("Remaining balance should be greater than 10");
        }
    }

    function transfer(address _from, address _to, uint amount) external payable {
        if (balances[_from] <= 10) {
            revert ("Transaction can't be processed!");     //Revert function
        }

        else {
            uint previousBalanceFrom = balances[_from];
            uint previousBalanceTo = balances[_to];

            balances[_from] -= amount;
            balances[_to] += amount;

            //Assert function to check internal consistency of balances
            assert(balances[_from] == previousBalanceFrom - amount);
            assert(balances[_to] == previousBalanceTo + amount);

             emit msgLog("Successfully Transferred : ",amount, _from, _to);
        }
    }
}