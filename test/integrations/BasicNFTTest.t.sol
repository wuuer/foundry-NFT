// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {DeployBasicNFT} from "../../script/DeployBasicNFT.s.sol";
import {BasicNFT} from "../../src/BasicNFT.sol";

contract BasicNFTTest is Test {
    BasicNFT private basicNFT;
    address private bob = makeAddr("bob");
    string public constant SHIBA =
        "https://bafybeie5venjwpgkqpthezwtyrm7bqm5wzkiukcvqdyftd4behdamkw3re.ipfs.dweb.link/?filename=shiba-inu.png";

    // pinata:
    //"https://yellow-top-termite-693.mypinata.cloud/ipfs/QmYx6GsYAKnNzZ9A6NvEKV9nf1VaDzJrqDR23Y8YSkebLU";

    function setUp() external {
        DeployBasicNFT deploy = new DeployBasicNFT();
        basicNFT = deploy.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNFT.name();
        assert(
            keccak256(abi.encodePacked(expectedName)) ==
                keccak256(abi.encodePacked(actualName))
        );
    }

    function testCanMintAndHaveAbalance() public {
        vm.prank(bob);
        basicNFT.mintNFT(SHIBA);

        assert(basicNFT.balanceOf(bob) == 1);

        assert(
            keccak256(abi.encodePacked(SHIBA)) ==
                keccak256(abi.encodePacked(basicNFT.tokenURI(0)))
        );
    }
}
