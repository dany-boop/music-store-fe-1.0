// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

contract BlockchainPayment {
    struct Payment {
        uint256 id;
        string blockchainTxHash;
        string walletAddress;
        bool isTestnet;
        uint256 amount;
        string currency; // Represents the cryptocurrency used
        uint256 submittedAt;
        uint256 confirmedAt;
    }

    enum BlockchainStatus {
        PENDING,
        CONFIRMED,
        FAILED
    }

     address public owner;


modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
    }
}