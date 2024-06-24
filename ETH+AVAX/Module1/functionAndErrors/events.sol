// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Events {
    //Event Declaration
    //upto 3 parametrs can be indexed
    //Indexed parameters help you filter the logs by the indexed parameters
    event logMsg(address indexed sender, string message);
    event logMepty();
    function fireEvent() public {
        emit logMsg(msg.sender, "Hola Gracias!");
        emit logMepty();
    }
}