// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StokkaEngine} from "../src/StokkaEngine.sol";

contract StokkaEngineTest is Test {
    StokkaEngine public stokka;

    function setUp() public {
        stokka = new StokkaEngine();
    }
}
