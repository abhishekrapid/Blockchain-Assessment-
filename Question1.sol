// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ABC{

  constructor() {
    balanceOf[msg.sender] = 10000;
  }
  
  function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balanceOf[msg.sender] >= _value, "insufficient balance");
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
  }
  
}
