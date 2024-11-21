//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/* import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; */
import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract BUSD is ERC20 {
    constructor() ERC20("BUSD", "BUSD") {
        _mint(msg.sender, 10000000 * 10 ** 18);
    }
}