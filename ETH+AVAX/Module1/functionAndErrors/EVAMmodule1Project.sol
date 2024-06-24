// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// required
// assert
// revert

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
     if (balances[_address] <= 10) {  // "Balance should not be less than 10 wei"); //
        revert();
     }
     else {
         balances[_address] -= amount;
        //  return balances[_address];
     }   
    }

    function transfer(address _from, address _to, uint amount) external payable {

            require(balances[_from] > 10, "Insufficient Funds");

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
