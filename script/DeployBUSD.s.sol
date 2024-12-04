// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Script, console } from "forge-std/Script.sol";
import { BUSD } from "../src/BUSD.sol";

contract DeployBUSD is Script {
    function run() public returns (BUSD) {
        vm.startBroadcast();
        
        BUSD busd = new BUSD();
        
        vm.stopBroadcast();
        return busd;
    }
}
