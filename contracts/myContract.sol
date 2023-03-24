// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract MyContract {
    string private name;

    event NameSet(string newName, address indexed editedBy, uint256 timestamp);

    constructor(string memory _name) {
        name = _name;
    }

    function setName(string memory _name) public {
        name = _name;
        emit NameSet(_name, msg.sender, block.timestamp);
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
