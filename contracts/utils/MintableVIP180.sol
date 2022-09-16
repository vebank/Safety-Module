// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import '../lib/VIP180.sol';

/**
 * @title VIP180Mintable
 * @dev VIP180 minting logic
 */
contract MintableVIP180 is VIP180 {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    ) public VIP180(name, symbol, decimals) {}

    /**
     * @dev Function to mint tokens
     * @param value The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(uint256 value) public returns (bool) {
        _mint(msg.sender, value);
        return true;
    }
}
