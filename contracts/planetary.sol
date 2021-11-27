// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Planetary is ERC721, ERC721URIStorage {
    constructor() ERC721("Planetary", "PLNT") {
      _createPlanet(msg.sender, 1, "");
      _createPlanet(msg.sender, 2, "");
      _createPlanet(msg.sender, 3, "");
      _createPlanet(msg.sender, 4, "");
      _createPlanet(msg.sender, 5, "");



    }

    function _cratePlanet(address to, uint id, string memory url) private returns (bool) {
      _safeMint(to, id);
      return true;

    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipsf.io/ipsf";
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
}