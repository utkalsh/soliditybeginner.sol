// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract PrivateToken {

    // Public variables
    string public tokenName = "PrivateToken"; 
    string public tokenAbbrv = "PT";
    uint256 public totalSupply = 0;

    // Balances mapping
    mapping(address => uint256) public balances;

    // Mint function
    function mintTokens(address account, uint256 amount) public {
        totalSupply += amount;
        balances[account] += amount;
    }

    // Burn function
    function burnTokens(address account, uint256 amount) public {
        require(balances[account] >= amount, "The balance is insufficient");
        totalSupply -= amount; 
        balances[account] -= amount;
}
}
