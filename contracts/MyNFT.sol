// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "./base/ERC721Upgradeable.sol";
import "./base/EIP712SigMint.sol";

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract MyNFT is ERC721Upgradeable, EIP712SigMint, OwnableUpgradeable {
    function initialize(
        string memory _name,
        string memory _symbol
    ) public initializer {
        __Ownable_init();
        __ERC721_init(_name, _symbol);
    }

    function addSigner(address _signer) external onlyOwner {
        _addSigner(_signer);
    }

    function removeSigner(address _signer) external onlyOwner {
        _removeSigner(_signer);
    }
}
