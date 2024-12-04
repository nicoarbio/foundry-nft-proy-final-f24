// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Script, console } from "forge-std/Script.sol";
import { CCNFT } from "../src/CCNFT.sol";

contract DeployCCNFTSoja is Script {
    function run() public returns (CCNFT) {
        vm.startBroadcast();
        
        CCNFT ccnft = new CCNFT("CriptoSoja", "CSJ", "https://ipfs.io/ipfs/bafkreifequgryewbaqnlmgu2rjaupasvcu6ywlcbzw6kvhtaxzhqdnfeyu");
        
        vm.stopBroadcast();
        return ccnft;
    }
}

contract DeployCCNFTTrigo is Script {
    function run() public returns (CCNFT) {
        vm.startBroadcast();
        
        CCNFT ccnft = new CCNFT("CriptoTrigo", "CTG", "https://ipfs.io/ipfs/bafkreiels5trkhppfrf2tavv64hmcucohvuiyj5y2emshkwzcgoz3tg2la");
        
        vm.stopBroadcast();
        return ccnft;
    }
}
