// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

event myLog(string Brand_Name , address Address);
// event arrayPrint(struct myArray);
contract Structs {
    struct Car {
        string Brand;
        string Model;
        uint YearMake;
        address owner;
    }

    // Car public  cars;
    Car[] public cars; 
    function examples()  external {
        Car memory myCar = Car("Toyota", "Hilux", 2023, msg.sender);
        Car memory Audi = Car("Audi", "Q7", 2023, msg.sender) ;
        string memory brandname = myCar.Brand;
        cars.push(myCar);
        cars.push(Audi);
        // emit myLog(brandname, msg.sender);
    }
}