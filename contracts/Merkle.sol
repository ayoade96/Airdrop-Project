//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Timidan is ERC20 {
    bytes32 public merkleRoot;

    mapping(address => bool) public claimed;

    event Airdrop(address indexed recipient, uint256 amount);

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply,
        bytes32 _merkleRoot
    ) ERC20(_name, _symbol) {
        _mint(address(this), _totalSupply);
        merkleRoot = _merkleRoot;
    }


    function airdrop(bytes32[] memory proof) public {
        require(!claimed[msg.sender], "Already claimed");
        // require(verifyProof(proof, merkleRoot, address(msg.sender)), "Invalid proof");
        claimed[msg.sender] = true;
        _mint(msg.sender, 1000);
        emit Airdrop(msg.sender, 1000);
    }

    

}