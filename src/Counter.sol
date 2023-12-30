// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Counter {
    int private count;

    constructor(int _count) {
        count = _count;
    }

    function incrementCount() public {
        count++;
    }

    function decrementCount() public {
        count--;
    }

    function getCount() public view returns (int) {
        return count;
    }
}