//SPDX-License-Indentifier: MIT
pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract DeployBasicNft is Script{
    function run() external returns (BasicNft) {
        vm.startBroadCast();
        BasicNft basicNft = new BasicNft();
        vm.stopBroadCast();
        return basicNft;
    }
}