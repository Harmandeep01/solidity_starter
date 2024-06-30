// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract MyToken {
    address public owner;
    string public tokenName;
    string public tokenSymbol;

    mapping(address => uint256) public balances;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
        tokenName = "HermannCoin";
        tokenSymbol = "HNC";
    }

   function mint(address _address, uint256 _value) public onlyOwner{
        require(_address == owner, "uuh ooh! You are not the owner of this contract");
        balances[_address] += _value;
    }


   function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value) {
            balances[_address] -= _value;
        }
    }

   function transfer( address _from, address _to, uint256 value) public {
        if (balances[_from] >= value) {

            balances[_from] -= value;
            balances[_to] += value;
        }
    }
}
