// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract StokkaCDP {
    uint256 public number;
    uint256 public number2;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
