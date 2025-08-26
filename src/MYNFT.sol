// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

/**
 * @title MeuNFT
 * @dev Simple Non-Fungible Token (NFT) contract using OpenZeppelin.
 * Minting is restricted to the contract owner.
 */
contract MeuNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;

    /**
     * @dev The constructor initializes the NFT collection's name, symbol,
     * and sets the initial owner of the contract.
     */
    constructor() ERC721("MeuNFT", "MNFT") Ownable(msg.sender) {}

    /**
     * @dev Mints a new NFT and assigns it to an address.
     * Can only be called by the contract owner.
     * @param to The address that will receive the new NFT.
     * @param uri The metadata URI for the new token (usually an IPFS link).
     */
    function safeMint(address to, string memory uri) public onlyOwner {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter += 1;
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    function mintTo(address destinatario) public onlyOwner {
        string memory uri = "ipfs://bafkreieesgiiqyfmt264hmslypiaeqorkfnteplinddm5mycly7qb7qvva";
        safeMint(destinatario, uri);
    }
}