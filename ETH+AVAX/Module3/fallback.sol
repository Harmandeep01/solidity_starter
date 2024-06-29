// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// contract with fallback function
contract fall {
  uint n;
  function set(uint value) external {
    n = value;
  }

    receive() external payable { }
  fallback() external payable {
    n = 0;
  }
}

// contract to interact with contract fall
contract Sendeth {
  function callfall( fall a ) public returns (bool) {
     // calling a non-existing function
      (bool success,) = address(a).call(abi.encodeWithSignature("setter()"));
      require(success);

      // sending ether to contract fall
       address payable payableA = payable(address(a));
    //   address payable payableA = address(uint160(address(a)));
      return(payableA.send(2 ether));
   }
}
