// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract bankABC {
    struct myAccount{
        uint balance;
        address _address;
    } 
    mapping (address => uint) balances;
    mapping (address => myAccount) myBankDetails;

    myAccount[] myaccount;
    function addMoney(address _address, uint amount) payable external {
       balances[_address] += amount;
       myBankDetails[_address] = myAccount(balances[_address], _address);
       //pushing it to array
       myAccount memory myStructOne = myAccount(amount,_address);
       myaccount.push(myStructOne);
    }

    function getDetails( address _address) public  view returns (myAccount memory) {
        return myBankDetails[_address];
    }

}
