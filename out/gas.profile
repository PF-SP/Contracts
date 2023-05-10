
======= contracts/SunNFT.sol:SunCity =======
Gas estimation:
construction:
   infinite + 1468800 = infinite
external:
   approve(address,uint256):	infinite
   balanceOf(address):	2635
   burn(uint256):	infinite
   getApproved(uint256):	4792
   isApprovedForAll(address,address):	infinite
   name():	infinite
   owner():	2376
   ownerOf(uint256):	2621
   renounceOwnership():	infinite
   safeMint(address,uint256,string):	infinite
   safeTransferFrom(address,address,uint256):	infinite
   safeTransferFrom(address,address,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26772
   supportsInterface(bytes4):	infinite
   symbol():	infinite
   tokenURI(uint256):	infinite
   totalSupply():	2341
   transferFrom(address,address,uint256):	infinite
   transferOwnership(address):	28424
internal:
   _baseURI():	infinite
   _burn(uint256):	infinite

======= contracts/openzeppelin/contracts/access/Ownable.sol:Ownable =======
Gas estimation:

======= contracts/openzeppelin/contracts/interfaces/IERC4906.sol:IERC4906 =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC721/ERC721.sol:ERC721 =======
Gas estimation:
construction:
   infinite + 953800 = infinite
external:
   approve(address,uint256):	infinite
   balanceOf(address):	2634
   getApproved(uint256):	4792
   isApprovedForAll(address,address):	infinite
   name():	infinite
   ownerOf(uint256):	2555
   safeTransferFrom(address,address,uint256):	infinite
   safeTransferFrom(address,address,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26705
   supportsInterface(bytes4):	516
   symbol():	infinite
   tokenURI(uint256):	infinite
   transferFrom(address,address,uint256):	infinite
internal:
   __unsafe_increaseBalance(address,uint256):	infinite
   _afterTokenTransfer(address,address,uint256,uint256):	infinite
   _approve(address,uint256):	infinite
   _baseURI():	infinite
   _beforeTokenTransfer(address,address,uint256,uint256):	infinite
   _burn(uint256):	infinite
   _checkOnERC721Received(address,address,uint256,bytes memory):	infinite
   _exists(uint256):	infinite
   _isApprovedOrOwner(address,uint256):	infinite
   _mint(address,uint256):	infinite
   _ownerOf(uint256):	infinite
   _requireMinted(uint256):	infinite
   _safeMint(address,uint256):	infinite
   _safeMint(address,uint256,bytes memory):	infinite
   _safeTransfer(address,address,uint256,bytes memory):	infinite
   _setApprovalForAll(address,address,bool):	infinite
   _transfer(address,address,uint256):	infinite

======= contracts/openzeppelin/contracts/token/ERC721/IERC721.sol:IERC721 =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC721/IERC721Receiver.sol:IERC721Receiver =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol:ERC721Burnable =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol:ERC721URIStorage =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol:IERC721Metadata =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/Address.sol:Address =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   _revert(bytes memory,string memory):	infinite
   functionCall(address,bytes memory):	infinite
   functionCall(address,bytes memory,string memory):	infinite
   functionCallWithValue(address,bytes memory,uint256):	infinite
   functionCallWithValue(address,bytes memory,uint256,string memory):	infinite
   functionDelegateCall(address,bytes memory):	infinite
   functionDelegateCall(address,bytes memory,string memory):	infinite
   functionStaticCall(address,bytes memory):	infinite
   functionStaticCall(address,bytes memory,string memory):	infinite
   isContract(address):	infinite
   sendValue(address payable,uint256):	infinite
   verifyCallResult(bool,bytes memory,string memory):	infinite
   verifyCallResultFromTarget(address,bool,bytes memory,string memory):	infinite

======= contracts/openzeppelin/contracts/utils/Context.sol:Context =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/Strings.sol:Strings =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   equal(string memory,string memory):	infinite
   toHexString(address):	infinite
   toHexString(uint256):	infinite
   toHexString(uint256,uint256):	infinite
   toString(int256):	infinite
   toString(uint256):	infinite

======= contracts/openzeppelin/contracts/utils/introspection/ERC165.sol:ERC165 =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/introspection/IERC165.sol:IERC165 =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/math/Math.sol:Math =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   average(uint256,uint256):	infinite
   ceilDiv(uint256,uint256):	infinite
   log10(uint256):	infinite
   log10(uint256,enum Math.Rounding):	infinite
   log2(uint256):	infinite
   log2(uint256,enum Math.Rounding):	infinite
   log256(uint256):	infinite
   log256(uint256,enum Math.Rounding):	infinite
   max(uint256,uint256):	infinite
   min(uint256,uint256):	infinite
   mulDiv(uint256,uint256,uint256):	infinite
   mulDiv(uint256,uint256,uint256,enum Math.Rounding):	infinite
   sqrt(uint256):	infinite
   sqrt(uint256,enum Math.Rounding):	infinite

======= contracts/openzeppelin/contracts/utils/math/SignedMath.sol:SignedMath =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   abs(int256):	infinite
   average(int256,int256):	infinite
   max(int256,int256):	infinite
   min(int256,int256):	infinite
