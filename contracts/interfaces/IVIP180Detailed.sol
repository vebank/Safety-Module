// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {IVIP180} from './IVIP180.sol';

/**
 * @dev Interface for VIP180 including metadata
 **/
interface IVIP180Detailed is IVIP180 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}
