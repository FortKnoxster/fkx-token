// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title FKX
 */
contract FKX is ERC20 {
    constructor() public ERC20("Knoxstertoken", "FKX") {
        _mint(msg.sender, 150000000 ether); // Mint fixed supply of 150 Million FKX
    }
}
