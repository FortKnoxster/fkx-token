// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract FKXMigrator is Ownable {
    using SafeERC20 for IERC20;

    function batchTransfer(
        IERC20 erc20,
        address[] calldata addrs,
        uint256[] calldata values
    ) public onlyOwner {
        require(addrs.length == values.length, "addrs and vals mismatch");
        for (uint256 i = 0; i < addrs.length; i++) {
            erc20.safeTransferFrom(msg.sender, addrs[i], values[i]);
        }
    }
}
