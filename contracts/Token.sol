// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Tim is ERC20 {

    constructor() ERC20("Token", "TKA") {}

    function mint(address to, uint amount) public {
        _mint(to, amount);
    }
}