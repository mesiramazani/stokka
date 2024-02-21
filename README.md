## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

### StyleGuide
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