// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract CNRToken {
    string public constant tokenName = "Conor";
    string public constant tokenSymbol = "CNR";
    uint public currentSupply;
    uint public totalMinted;
    uint public totalBurned;
    address public owner;

    mapping(address => uint) private balances;

    event Mint(address indexed to, uint amount);
    event Burn(address indexed from, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function getBalance(address account) external view returns (uint) {
        return balances[account];
    }

    function mint(uint amount) external onlyOwner {
        balances[owner] += amount;
        currentSupply += amount;
        totalMinted += amount;

        emit Mint(owner, amount);
    }

    function burn(uint amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance to burn");
        balances[msg.sender] -= amount;
        currentSupply -= amount;
        totalBurned += amount;

        emit Burn(msg.sender, amount);
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance to transfer");
        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }

    function calculateTurnover() external view returns (uint) {
        return totalMinted + totalBurned;
    }
}

