// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.0;
contract test {
    function f() public returns (bytes memory) {
        return type(test).name;
    }
}