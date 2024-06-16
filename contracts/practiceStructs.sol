// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Struct {
    struct MobileDevices {
        string BrandName;
        string ModelName;
        int YearMake;
    }

    MobileDevices[]  public mobilesArray;

    function example() external   {
        MobileDevices memory Xiaomi = MobileDevices("Xiaomi", "Note 8 Pro", 2019);
        MobileDevices memory Samsung = MobileDevices("Samsung", "S24 Ultra", 2022);
        
        mobilesArray.push(Xiaomi);
        mobilesArray.push(Samsung);

        // MobileDevices storage _mobile0 = mobilesArray[0];
        MobileDevices storage _mobile1 = mobilesArray[1];
        // _mobile0.BrandName = "Apple";
        // _mobile0.ModelName = "iPhone 15";
        // _mobile0.YearMake = 2023;


        delete _mobile1.YearMake;
    }
}