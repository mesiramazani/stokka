// SPDX-License-Identifier: MIT

/**
@title: SyntheticAAPL
@author: The Stokka Team
@notice: The following contract deploys an ERC20 token called sAAPL. The token contract will be owned by StokkaEngine.
The sAAPL token can be minted and burned by the StokkaEngine smart contract. 

@notice: The sAAPL Token is always backed by a larger amount of ETH. Oracle prices and liquidations will make sure this is always the case.

@notice: This contract handles all the logic for minting and burning the synthethic asset, as well as the depositing and withdrawing of collateral.
*/

pragma solidity ^0.8.19;

import {ERC20Burnable, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


contract SyntheticAAPL is ERC20Burnable, Ownable {
    constructor() ERC20("SyntheticApple", "sAAPL") {}

    /**
    @param onlyOwner: Only the StokkaEngine contract can call this function.
    @notice This function will burn _amount of sAAPL tokens.
    */
    function burn(uint256 _amount) public override onlyOwner {}

    /**
    @return bool: Returns a boolean which shows if the minting has been successful.
    @notice This function will mint _amount of tokens to the caller address.
    */
    function mint(address _to, uint256 _amount) external onlyOwner returns (bool) {}
}