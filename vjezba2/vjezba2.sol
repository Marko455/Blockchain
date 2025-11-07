// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 amount);

    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than 0");
        balances[msg.sender] += msg.value;
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }

    function sendFunds(address payable recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        require(msg.sender != recipient, "Cannot send to yourself");
        require(amount > 0, "Amount must be greater than zero");

        balances[msg.sender] -= amount;
        balances[recipient] += amount;

        emit Transfer(msg.sender, recipient, amount);
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
