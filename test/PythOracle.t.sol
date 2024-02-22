// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {PythOracle} from "../src/PythOracle.sol";

contract PythOracleTest is Test {
    PythOracle public oracle;

    function setUp() public {
        oracle = new PythOracle();
    }
}
