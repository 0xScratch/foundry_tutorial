// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Test.sol";
import "src/Counter.sol";

contract ContractTest is Test {
    Counter count;

    function setUp() public {
        count = new Counter(5);
    }

    function testGetCount() public {
        int value = count.getCount();
        assertEq(value, 5);
    }

    function testIncrement() public {
        count.incrementCount();
        int value = count.getCount();
        assertEq(value, 6);
        emit log_named_int("The value is", value);
    }
}