// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract NFTCount {

    uint256 public numberOfNFT;

    // This function allows to check the total number of NFT
    function checkTotalNFT() public view returns(uint256) {
        return numberOfNFT;
    }

    // This function will increase the NFT number by 1
    function increaseNFT() public {
        numberOfNFT += 1;
    }

    // This function will decrease the NFT number by 1
    function decreaseNFT() public {
        numberOfNFT -= 1;
    } 
}
