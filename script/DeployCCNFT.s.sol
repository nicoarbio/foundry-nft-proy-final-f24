// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Script, console } from "forge-std/Script.sol";
import { CCNFT } from "../src/CCNFT.sol";

contract DeployCCNFTSoja is Script {
    function run() public returns (CCNFT) {
        vm.startBroadcast();
        
        CCNFT ccnft = new CCNFT("CriptoSoja", "CSJ");
        
        vm.stopBroadcast();
        return ccnft;
    }
}

contract DeployCCNFTTrigo is Script {
    function run() public returns (CCNFT) {
        vm.startBroadcast();
        
        CCNFT ccnft = new CCNFT("CriptoTrigo", "CTG");
        
        vm.stopBroadcast();
        return ccnft;
    }
}
