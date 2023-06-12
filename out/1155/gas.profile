
======= contracts/Sun1155NFT.sol:SunToken1155 =======
Gas estimation:
construction:
   infinite + 1856200 = infinite
external:
   balanceOf(address,uint256):	2696
   balanceOfBatch(address[],uint256[]):	infinite
   burn(address,uint256,uint256):	infinite
   burnBatch(address,uint256[],uint256[]):	infinite
   exists(uint256):	2514
   isApprovedForAll(address,address):	infinite
   mint(address,uint256,uint256,bytes):	infinite
   mintBatch(address,uint256[],uint256[],bytes):	infinite
   owner():	2367
   renounceOwnership():	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26769
   setURI(string):	infinite
   supportsInterface(bytes4):	557
   totalSupply(uint256):	2469
   transferOwnership(address):	28384
   uri(uint256):	infinite
internal:
   _beforeTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite

======= contracts/openzeppelin/contracts/access/Ownable.sol:Ownable =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/ERC1155.sol:ERC1155 =======
Gas estimation:
construction:
   infinite + 1065600 = infinite
external:
   balanceOf(address,uint256):	2673
   balanceOfBatch(address[],uint256[]):	infinite
   isApprovedForAll(address,address):	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26702
   supportsInterface(bytes4):	534
   uri(uint256):	infinite
internal:
   _afterTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   _asSingletonArray(uint256):	infinite
   _beforeTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   _burn(address,uint256,uint256):	infinite
   _burnBatch(address,uint256[] memory,uint256[] memory):	infinite
   _doSafeBatchTransferAcceptanceCheck(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   _doSafeTransferAcceptanceCheck(address,address,address,uint256,uint256,bytes memory):	infinite
   _mint(address,uint256,uint256,bytes memory):	infinite
   _mintBatch(address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   _safeBatchTransferFrom(address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   _safeTransferFrom(address,address,uint256,uint256,bytes memory):	infinite
   _setApprovalForAll(address,address,bool):	infinite
   _setURI(string memory):	infinite

======= contracts/openzeppelin/contracts/token/ERC1155/IERC1155.sol:IERC1155 =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol:IERC1155Receiver =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol:ERC1155Burnable =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol:ERC1155Supply =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/extensions/IERC1155MetadataURI.sol:IERC1155MetadataURI =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/Address.sol:Address =======
Gas estimation:
construction:
   96 + 17000 = 17096
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

======= contracts/openzeppelin/contracts/utils/introspection/ERC165.sol:ERC165 =======
Gas estimation:

======= contracts/openzeppelin/contracts/utils/introspection/IERC165.sol:IERC165 =======
Gas estimation:
