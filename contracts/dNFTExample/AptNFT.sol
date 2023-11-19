// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * THIS IS AN EXAMPLE CONTRACT THAT USES HARDCODED VALUES FOR CLARITY.
 * THIS IS AN EXAMPLE CONTRACT THAT USES UN-AUDITED CODE.
 * DO NOT USE THIS CODE IN PRODUCTION.
 */
contract AptNFT is ERC721URIStorage, Ownable {
    string constant TOKEN_URI =
        "https://ipfs.io/ipfs/QmVzm6cq8K9syjyRGwLFmZccD9SgsaXM5kQrRda6AybjdN?filename=highrise-output.png";
    uint256 internal tokenId;

    constructor(address initialOwner) ERC721("AptNFT", "ANFT") Ownable(initialOwner) {}

    function mint(address to) public onlyOwner {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, TOKEN_URI);
        unchecked {
            tokenId++;
        }
    }
}