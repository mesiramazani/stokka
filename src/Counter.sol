// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    //added comment

    function setNumber(uint256 newNumber) public {
        // sets a new number
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
