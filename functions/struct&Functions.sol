// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract pracFunc{
    struct student{
        string name;
        address cryptoAddress;
        string UID;
        uint nationalID;
        string class;
    }

    student[] public  Student;

    // mapping (address => string) class;

    function myStructs() public {
        student memory myStudent = student("Harmandeep", msg.sender, "23MCA20451", 22110266, "2A"); 

        Student.push(myStudent);
    } 

    function changeClass(uint index, string memory newClass) public  {
        require(index < Student.length, "Index out of range");
       Student[index].class = newClass;
    }

}