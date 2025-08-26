// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MYNFT.sol";

contract DeployScript is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy do contrato
        MeuNFT nft = new MeuNFT();

        // Mint automático para o deployer
        string memory uri = "ipfs://bafkreieesgiiqyfmt264hmslypiaeqorkfnteplinddm5mycly7qb7qvva";
        nft.safeMint(msg.sender, uri);

        vm.stopBroadcast();
    }
}
