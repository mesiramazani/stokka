# About

The following project is designed to showcase an MVP of a system that allows for the minting and burning of a synthethic assets using ETH as collateral.

# Getting Started
## Requirements
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`

## Quickstart

```
git clone https://github.com/mesiramazani/stokka.git
cd stokka
forge build
```
# Usage

## Start a local node

```
make anvil
```

## Deploy

This will default to your local node. You need to have it running in another terminal in order for it to deploy.

```
make deploy
```

## Testing
```
forge test
```

### Test Coverage

```
forge coverage
```

## Deploy - Other Network

[See below](#deployment-to-a-testnet-or-mainnet)

1. Setup environment variables

You'll want to set your `SEPOLIA_RPC_URL` and `PRIVATE_KEY` as environment variables. You can add them to a `.env` file, similar to what you see in `.env.example`.

- `PRIVATE_KEY`: The private key of your account (like from [metamask](https://metamask.io/)). **NOTE:** FOR DEVELOPMENT, PLEASE USE A KEY THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.
  - You can [learn how to export it here](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-Export-an-Account-Private-Key).
- `SEPOLIA_RPC_URL`: This is url of the sepolia testnet node you're working with. You can get setup with one for free from [Alchemy](https://alchemy.com/?a=673c802981)

Optionally, add your `ETHERSCAN_API_KEY` if you want to verify your contract on [Etherscan](https://etherscan.io/).

1. Get testnet ETH

Head over to [faucets.chain.link](https://faucets.chain.link/) and get some testnet ETH. You should see the ETH show up in your metamask.

2. Deploy

```
make deploy ARGS="--network sepolia"
```
## StyleGuide
- Contracts and libraries should be named using the CapWords style
- Structs should be named using the CapWords style
- Events should be named using the CapWords style
- Functions should use mixedCase
- Function arguments should use mixedCase
- Local and State Variable Names Use mixedCase
- Constants should be named with all capital letters with underscores separating words.
- Modifier Names. Use mixedCase
- Avoiding Naming Collisions --> singleTrailingUnderscore_
- _singleLeadingUnderscore
This convention is suggested for non-external functions and 
state variables (private or internal). State variables without 
a specified visibility are internal by default.
- 4 Spaces are preferred to identations.
- Surround function declarations with a single blank line.
- Maximum suggested line length is 120 characters.
- Wrapped lines should conform to the following guidelines.
The first argument should not be attached to the opening parenthesis.
One, and only one, indent should be used.
Each argument should fall on its own line.
The terminating element, );, should be placed on the final line by itself.

- Functions should be grouped according to their visibility and ordered:
constructor
receive function (if exists)
fallback function (if exists)
external
public
internal
private
Within a grouping, place the view and pure functions last.
```solidity
if (...) {
    ...
}

for (...) {
    ...
}
```
The modifier order for a function should be:
Visibility
Mutability
Virtual
Override
Custom modifiers

- Contract elements should be laid out in the following order:

Pragma statements
Import statements
Events
Errors
Interfaces
Libraries
Contracts

Inside each contract, library or interface, use the following order:
Type declarations
State variables
Events
Errors
Modifiers
Functions