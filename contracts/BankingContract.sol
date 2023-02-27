// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract BankingContract {
    
    uint256 public balance = 0; 
    
    event Balance(uint256 bal);

    function  withdraw(uint256 _amount) external payable {
        require(balance > _amount, "INSUFFICIENT BALANCE.");
        balance -= _amount;
        emit Balance(balance);
    }

    function deposit(uint256 _amount) external payable {
        require(_amount > 0, "INVALID AMOUNT.");
        balance += _amount;
        emit Balance(balance);
    }

    function bal_inquiry() external {
        emit Balance(balance);
    }
}
