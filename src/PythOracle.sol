// SPDX-License-Identifier: MIT

/**
@title: PythOracle
@author: The Stokka Team
@notice: The following contract will pull prices from the Pythnet network for the collateral in the StokkaEngine contract aswell as the Synthetic AAPL token.

@notice: The StokkaEngine contract will refer to the prices provided by this contract to determine if a liquidation is possible on any given position and how much a user can mint when depositing collateral.
*/

pragma solidity ^0.8.19;

contract PythOracle {
    constructor() {}
}