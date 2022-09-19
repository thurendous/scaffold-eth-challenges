// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;  //Do not change the solidity version as it negativly impacts submission grading

contract ExampleExternalContract {

  bool public completed;
  address payable public you;

  constructor() {
    you = payable(msg.sender);
  }

  function complete() public payable {
    completed = true;
  }

  function retrieveFunds() public {
    you.transfer(address(this).balance);
  }

}
