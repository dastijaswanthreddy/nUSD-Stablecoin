# nUSD Stablecoin

nUSD is a decentralized stablecoin backed by ETH, similar to DAI. This project allows users to deposit ETH and receive 50% of its value in nUSD tokens. Users can also redeem their nUSD tokens for ETH at the current exchange rate.

## Overview

The nUSD Stablecoin project is implemented using the Ethereum blockchain and the Solidity programming language. It leverages the Chainlink Oracle to fetch the current ETH price. The project includes a smart contract written in Solidity that handles the deposit and redemption of nUSD tokens, as well as tracks the total supply of nUSD tokens.

## Assumptions

- The project assumes the usage of a Testnet environment for development and testing purposes. Therefore, the project utilizes Sepholia Testnet Ether and the Testnet Chainlink Oracle for obtaining the ETH price feed.

## Features

- Deposit ETH and receive nUSD tokens at a 1:2 ratio.
- Redeem nUSD tokens for ETH at the current exchange rate.
- Total supply of nUSD tokens is updated based on user actions.


## Prerequisites

To run this project locally, you'll need the following:
- Metamask: https://metamask.io/
- Test Network: https://sepolia.dev/ (You can prefer any test network not necessarly sepolia)
  
## Installation

1. Clone the repository
2. Complie the solidity file named "nUSDStablecoin.sol" and deploy the smart contract in the remix IDE("https://remix.ethereum.org/") using the specified test network pricefeed address in https://docs.chain.link/chainlink-functions/supported-networks
3. Update the smart contract address in the index.html page at the line 138.
4. Start the live server and navigate to that port to access the application.

## Usage

1. Connect your Metamask wallet to the application.
2. Deposit ETH:
   - Enter the amount of ETH you want to deposit in the input field.
   - Click the "Deposit" button.
   - Confirm the transaction in Metamask.
3. Redeem nUSD:
   - Enter the amount of nUSD you want to redeem in the input field.
   - Click the "Redeem" button.
   - Confirm the transaction in Metamask.
4. Total Supply: Total Supply of nUSD.

## Additional Notes

- Make sure to configure Metamask to connect to the desired Testnet network (e.g., Sepholia, Ropsten, Kovan, etc.) when interacting with the dApp.

- The smart contract includes basic functionality for depositing ETH and redeeming nUSD tokens. Feel free to extend the functionality as per your project requirements.

- Remember to properly manage the security and trust aspects of your project, including contract audits, secure key management, and best practices for smart contract development.

## Contributions

Contributions to the nUSD Stablecoin project are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.

