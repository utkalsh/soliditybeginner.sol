## PrivateToken Smart Contract

The PrivateToken smart contract is a basic example of a token contract implemented on the Ethereum blockchain using Solidity. It provides functionality for creating and managing a simple token called "PrivateToken" with the abbreviation "PT".

## Overview

The PrivateToken contract allows users to create and manage a basic token. It provides functions to mint (create) and burn (destroy) tokens for a given Ethereum address. The contract keeps track of the total supply and individual token balances using a mapping.

## Contract Details

### Public Variables

1. tokenName: A string representing the name of the token, set to "PrivateToken".
2. tokenAbbrv: A string representing the abbreviation of the token, set to "PT".
3. totalSupply: An unsigned integer representing the total supply of tokens. It is initially set to 0.
   
## Mappings

balances: A mapping that associates Ethereum addresses with their token balances. Each address's balance is represented by an unsigned integer.

## Functions

mintTokens(address account, uint256 amount): A function to mint (create) new tokens and assign them to a specified Ethereum address. It increases the total supply and updates the balance of the provided address.

burnTokens(address account, uint256 amount): A function to burn (destroy) tokens from a specified Ethereum address. It reduces the total supply and updates the balance of the provided address. It performs a check to ensure that the address has sufficient balance to burn.

## Usage

## Minting Tokens

To mint new tokens, you can call the mintTokens function, providing the Ethereum address where the tokens should be assigned and the amount of tokens to mint. This will increase the total supply and update the balance of the specified address.

### solidity

function mintTokens(address account, uint256 amount) public

## Burning Tokens

To burn tokens, you can call the burnTokens function, specifying the Ethereum address from which tokens should be burned and the amount of tokens to burn. This will decrease the total supply and reduce the balance of the specified address, given that the address has a sufficient balance.

### solidity

function burnTokens(address account, uint256 amount) public

## Author
UTKAL CHOUDHARY

## License
This smart contract is licensed under the GNU General Public License v3.0.
