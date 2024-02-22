// SPDX-License-Identifier: MIT

/**
@title: StokkaEngine
@author: The Stokka Team
@notice: The following contract is designed to showcase an MVP of a system that allows for the minting and burning of a synthethic assets using ETH as collateral.

@notice: The StokkaEngine contract should always be overcollateralized. Meaning the amount of ETH should always be more than the synthethic assets it is backing.
Hence we have a builtin liquidation mechanism.

@notice: This contract handles all the logic for minting and burning the synthethic asset, as well as the depositing and withdrawing of collateral.
*/

pragma solidity ^0.8.19;

contract StokkaEngine {
    constructor() {
        // constructor code
    }

    // External functions
    
        /*
    receive() external payable {
        // ...
    }

    fallback() external {
        // ...
    }
    */

    /// @param collateralAddress The ERC20 token address of the collateral you're depositing
    /// @param collateralAmount The amount of collateral you're depositing
    /// @param positionId Determines which position to deposit to. 
    /// @notice This function will deposit your collateral.
    function deposit(address collateralAddress, uint256 collateralAmount, uint256 positionId) external {}

    /// @notice This function will withdraw the collateral up to a maximum that is possible.
    function withdraw(address collateralAddress, uint256 collateralAmount, uint256 positionId) external {}


    /// @param synthAddress The ERC20 token address of the synth you want to mint
    /**  @param synthAmount The ratio of synth token to be minted relative to the collateral --> 
    Determines the amount of the synth asset you want to mint */
    /// @notice This function will mint synth tokens and give it to the user.
    function mint(uint256 positionId,  address synthAddress, uint256 synthAmount) external {}

    /// @notice This function will give back and burn the minted synth tokens. */
    function burn(uint256 positionId, address synthAddress, uint256 synthAmount) external {}

    /// @notice This function can be called by anyone if the minimum collateralization ratio of the position is broken.
    /// It will pay back and burn some of the debt to get a portion of the collateral with a discount. */
    function liquidate(uint256 positionId) external {}


    // External functions that are view
    // ...

    // External functions that are pure
    // ...

    // Public functions
    // ...

    // Internal functions
    // ...

    // Private functions
    // ...
}