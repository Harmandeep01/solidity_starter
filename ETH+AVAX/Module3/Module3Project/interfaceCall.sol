// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Interface Defining //
interface ICounter {
    function inc()external ;
    function count() external view returns (uint);
}

// Abstract Declaration //
abstract contract myAbstractCont{
    function interfaCall(address) virtual external ;
}

//Interface Callling //
contract interfaceExample{
    uint public count;
    function interfaceCall(address _addressOfSomeContract) external{

        //Using interface ICounter's Functions //
        ICounter(_addressOfSomeContract).inc();     
        count = ICounter(_addressOfSomeContract).count();
    
    }
}