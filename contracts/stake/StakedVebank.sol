// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import {IVIP180} from '../interfaces/IVIP180.sol';
import {StakedToken} from './StakedToken.sol';

/**
 * @title StakedVebank
 * @notice StakedToken with VEBANK token as staked token
 * @author VeBank
 **/
contract StakedVebank is StakedToken {
  string internal constant NAME = 'Staked VeBank';
  string internal constant SYMBOL = 'stkVEBANK';
  uint8 internal constant DECIMALS = 18;
  
  constructor(
    IVIP180 stakedToken,
    IVIP180 rewardToken,
    uint256 cooldownSeconds,
    uint256 unstakeWindow,
    address rewardsVault,
    address emissionManager,
    uint128 distributionDuration
  ) public StakedToken(
    stakedToken,
    rewardToken,
    cooldownSeconds,
    unstakeWindow,
    rewardsVault,
    emissionManager,
    distributionDuration,
    NAME,
    SYMBOL,
    DECIMALS) {}
}
