# ERC-721 NFT Smart Contract with Foundry

This project is a hands-on assignment to develop, test, and deploy a non-fungible token (NFT) smart contract on the Ethereum blockchain. The contract adheres to the ERC-721 standard, leveraging the secure and community-vetted contracts from OpenZeppelin.

The entire development process was managed using the Foundry toolkit within a WSL (Windows Subsystem for Linux) environment, from compilation and testing to deployment and on-chain interaction.

The minted NFT is linked to metadata and an image stored on IPFS, demonstrating a complete and decentralized implementation pattern.

## Features

-   **ERC-721 Compliant**: Built using OpenZeppelin's `ERC721` base implementation.
-   **Owner-Restricted Minting**: Utilizes `Ownable` to ensure only the contract owner can mint new tokens.
-   **IPFS Metadata**: Token URIs point to decentralized metadata stored on IPFS.
-   **Unique Token IDs**: Safely increments token IDs using OpenZeppelin's `Counters` library.
-   **Efficient Development**: Developed and tested using the fast and modern Foundry toolkit.

## Tech Stack

-   **Smart Contract**: Solidity `^0.8.20`
-   **Framework**: Foundry (Forge & Cast)
-   **Libraries**: OpenZeppelin Contracts `v5.x`
-   **Blockchain**: Ethereum (Sepolia Testnet)
-   **Decentralized Storage**: IPFS (via Pinata)
-   **Development Environment**: Windows Subsystem for Linux (WSL)

## Deployed Contract

* **Network**: Sepolia Testnet
* **Contract Address**: `0xC7F78BFC39B32e850d0E13B0a28c555705013D00`
