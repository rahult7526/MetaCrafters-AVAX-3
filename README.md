# MyToken Smart Contract
The MyToken smart contract is an ERC-20 compatible token contract that allows users to mint, burn, transfer, and track the balance of tokens.

## Features
* Mint new tokens to a provided address.
* Burn tokens, reducing the total supply.
* Transfer tokens from one address to another.
* Keep track of token balances for each address.
* Emit events for token transfers, burning, and minting.
* Calculate Total Turnover, Total Minted and Total Burn

 ## Getting Started
These instructions will guide you on how to deploy and interact with the MyToken smart contract.

# Prerequisites
* Node.js and npm installed on your machine.
### Installation
1. Clone this repository:

```
git clone <repository-url>
```
2. Install the project dependencies:

```
cd myToken
npm install
```
### Deploying the Contract
1. Edit the hardhat.config.js file and configure the desired network under the networks section.

2. Deploy the contract to the chosen network using Hardhat:

```
npx hardhat run scripts/deploy.js --network <network-name>
```
The contract address will be logged to the console upon successful deployment.

### Interacting with the Contract
To interact with the deployed MyToken contract, you can use tools like Remix or write custom scripts using the Ethereum JavaScript libraries.

#### Minting Tokens
The contract owner can mint new tokens to a provided address using the mint function.

#### Burning Tokens
Any user can burn their own tokens using the burn function. This reduces the total supply.

#### Transferring Tokens
Users can transfer their tokens to another address using the transfer function.

#### Testing
To run the test suite for the MyToken contract, execute the following command:
```
npx hardhat test
```
The test suite includes various scenarios to ensure the proper functioning of the contract.

## License
This project is licensed under the MIT License.

## Acknowledgments
This contract is based on the ERC-20 token standard.
The contract was developed using the Hardhat framework.

## Author
Kirtan Nahar
