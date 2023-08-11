
======= contracts/Stakeing/SunNFTStakeing.sol:StakeingPool =======
Gas estimation:
construction:
   infinite + 3516000 = infinite
external:
   CheckPrizePool(uint256[],(string,uint256,uint256,uint256,address,uint256,bool)):	infinite
   CreatePool(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[],bytes):	infinite
   Drain(uint256):	infinite
   Harvest(address,uint256,address):	infinite
   HarvestAndUnStakeMe(uint256):	infinite
   HarvestMe(uint256):	infinite
   HarvestedPrizes(address,uint256):	2714
   NewPoolPolicy(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[]):	infinite
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   Pools(uint256):	infinite
   PoolsIDs(uint256):	4654
   PrizePools(uint256):	19758
   PrizePoolsIDs(uint256):	4631
   Stake(uint256):	infinite
   StakeMany(uint256,uint256):	infinite
   TicketCount((bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   TicketCountById(uint256):	infinite
   UnStake(uint256,uint256):	infinite
   balanceOf(address,uint256):	2723
   balanceOfBatch(address[],uint256[]):	infinite
   burn(address,uint256,uint256):	infinite
   burnBatch(address,uint256[],uint256[]):	infinite
   exists(uint256):	2518
   isApprovedForAll(address,address):	infinite
   name():	infinite
   onERC1155BatchReceived(address,address,uint256[],uint256[],bytes):	infinite
   onERC1155Received(address,address,uint256,uint256,bytes):	infinite
   onERC721Received(address,address,uint256,bytes):	infinite
   owner():	2413
   renounceOwnership():	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26801
   setURI(string):	infinite
   supportsInterface(bytes4):	infinite
   symbol():	infinite
   totalSupply(uint256):	2495
   transferOwnership(address):	28412
   uri(uint256):	infinite
internal:
   _beforeTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   unStake(address,uint256,uint256):	infinite

======= contracts/Stakeing/SunPool.sol:StakePools =======
Gas estimation:
construction:
   1248 + 1197600 = 1198848
external:
   CheckPrizePool(uint256[],(string,uint256,uint256,uint256,address,uint256,bool)):	infinite
   HarvestedPrizes(address,uint256):	2646
   NewPoolPolicy(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[]):	infinite
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   Pools(uint256):	infinite
   PoolsIDs(uint256):	4587
   PrizePools(uint256):	19751
   PrizePoolsIDs(uint256):	4608
   TicketCount((bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   TicketCountById(uint256):	infinite

======= contracts/Stakeing/SunPoolPrize.sol:StakePoolPrize =======
Gas estimation:
construction:
   728 + 697000 = 697728
external:
   HarvestedPrizes(address,uint256):	2646
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   PrizePools(uint256):	19706
   PrizePoolsIDs(uint256):	4608
   TicketCount((bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   TicketCountById(uint256):	infinite
internal:
   harvestPrizePool(address,uint256,address):	infinite
   lockERC1155Tokens(address,uint256,uint256):	infinite
   lockERC20Tokens(address,uint256):	infinite
   lockERC721Tokens(address,uint256,uint256):	infinite

======= contracts/Sun1155NFT.sol:SunToken1155 =======
Gas estimation:
construction:
   infinite + 2044400 = infinite
external:
   balanceOf(address,uint256):	2723
   balanceOfBatch(address[],uint256[]):	infinite
   burn(address,uint256,uint256):	infinite
   burnBatch(address,uint256[],uint256[]):	infinite
   exists(uint256):	2539
   isApprovedForAll(address,address):	infinite
   mint(address,uint256,uint256,bytes):	infinite
   mintBatch(address,uint256[],uint256[],bytes):	infinite
   name():	infinite
   owner():	2368
   renounceOwnership():	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26728
   setTokenURI(uint256,string):	infinite
   setURI(string):	infinite
   supportsInterface(bytes4):	583
   symbol():	infinite
   totalSupply(uint256):	2494
   transferOwnership(address):	28387
   uri(uint256):	infinite
internal:
   _beforeTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite

======= contracts/Sun721NFT.sol:SunToken721 =======
Gas estimation:
construction:
   infinite + 1491800 = infinite
external:
   approve(address,uint256):	infinite
   balanceOf(address):	2635
   burn(uint256):	infinite
   getApproved(uint256):	4770
   isApprovedForAll(address,address):	infinite
   name():	infinite
   owner():	2376
   ownerOf(uint256):	2621
   renounceOwnership():	infinite
   safeMint(address,uint256,string):	infinite
   safeTransferFrom(address,address,uint256):	infinite
   safeTransferFrom(address,address,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26772
   setTokenURI(uint256,string):	infinite
   supportsInterface(bytes4):	infinite
   symbol():	infinite
   tokenURI(uint256):	infinite
   totalSupply():	2341
   transferFrom(address,address,uint256):	infinite
   transferOwnership(address):	28424
internal:
   _baseURI():	infinite
   _burn(uint256):	infinite

======= contracts/SunToken.sol:SunToken20 =======
Gas estimation:
construction:
   infinite + 1277800 = infinite
external:
   DOMAIN_SEPARATOR():	infinite
   allowance(address,address):	infinite
   approve(address,uint256):	24675
   balanceOf(address):	2629
   burn(uint256):	52994
   burnFrom(address,uint256):	infinite
   decimals():	245
   decreaseAllowance(address,uint256):	26968
   eip712Domain():	infinite
   increaseAllowance(address,uint256):	infinite
   mint(address,uint256):	infinite
   name():	infinite
   nonces(address):	2661
   owner():	2419
   pause():	infinite
   paused():	2371
   permit(address,address,uint256,uint256,uint8,bytes32,bytes32):	infinite
   renounceOwnership():	infinite
   symbol():	infinite
   totalSupply():	2372
   transfer(address,uint256):	53328
   transferFrom(address,address,uint256):	infinite
   transferOwnership(address):	28442
   unpause():	infinite
internal:
   _beforeTokenTransfer(address,address,uint256):	infinite

======= contracts/openzeppelin/contracts/access/Ownable.sol:Ownable =======
Gas estimation:

======= contracts/openzeppelin/contracts/interfaces/IERC4906.sol:IERC4906 =======
Gas estimation:

======= contracts/openzeppelin/contracts/interfaces/IERC5267.sol:IERC5267 =======
Gas estimation:

======= contracts/openzeppelin/contracts/security/Pausable.sol:Pausable =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/ERC1155.sol:ERC1155 =======
Gas estimation:
construction:
   infinite + 1083600 = infinite
external:
   balanceOf(address,uint256):	2677
   balanceOfBatch(address[],uint256[]):	infinite
   isApprovedForAll(address,address):	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26705
   supportsInterface(bytes4):	537
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

======= contracts/openzeppelin/contracts/token/ERC1155/extensions/ERC1155URIStorage.sol:ERC1155URIStorage =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/extensions/IERC1155MetadataURI.sol:IERC1155MetadataURI =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol:ERC1155Holder =======
Gas estimation:
construction:
   263 + 220600 = 220863
external:
   onERC1155BatchReceived(address,address,uint256[],uint256[],bytes):	infinite
   onERC1155Received(address,address,uint256,uint256,bytes):	infinite
   supportsInterface(bytes4):	392

======= contracts/openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol:ERC1155Receiver =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/ERC20.sol:ERC20 =======
Gas estimation:
construction:
   infinite + 476400 = infinite
external:
   allowance(address,address):	infinite
   approve(address,uint256):	24651
   balanceOf(address):	2585
   decimals():	244
   decreaseAllowance(address,uint256):	26922
   increaseAllowance(address,uint256):	infinite
   name():	infinite
   symbol():	infinite
   totalSupply():	2304
   transfer(address,uint256):	51094
   transferFrom(address,address,uint256):	infinite
internal:
   _afterTokenTransfer(address,address,uint256):	infinite
   _approve(address,address,uint256):	infinite
   _beforeTokenTransfer(address,address,uint256):	infinite
   _burn(address,uint256):	infinite
   _mint(address,uint256):	infinite
   _spendAllowance(address,address,uint256):	infinite
   _transfer(address,address,uint256):	infinite

======= contracts/openzeppelin/contracts/token/ERC20/IERC20.sol:IERC20 =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol:ERC20Burnable =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol:ERC20Permit =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol:IERC20Metadata =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol:IERC20Permit =======
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

======= contracts/openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol:ERC721Holder =======
Gas estimation:
construction:
   153 + 103600 = 103753
external:
   onERC721Received(address,address,uint256,bytes):	infinite

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

======= contracts/openzeppelin/contracts/utils/Counters.sol:Counters =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   current(struct Counters.Counter storage pointer):	infinite
   decrement(struct Counters.Counter storage pointer):	infinite
   increment(struct Counters.Counter storage pointer):	infinite
   reset(struct Counters.Counter storage pointer):	infinite

======= contracts/openzeppelin/contracts/utils/ShortStrings.sol:ShortStrings =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   byteLength(ShortString):	infinite
   byteLengthWithFallback(ShortString,string storage pointer):	infinite
   toShortString(string memory):	infinite
   toShortStringWithFallback(string memory,string storage pointer):	infinite
   toString(ShortString):	infinite
   toStringWithFallback(ShortString,string storage pointer):	infinite

======= contracts/openzeppelin/contracts/utils/StorageSlot.sol:StorageSlot =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   getAddressSlot(bytes32):	infinite
   getBooleanSlot(bytes32):	infinite
   getBytes32Slot(bytes32):	infinite
   getBytesSlot(bytes storage pointer):	infinite
   getBytesSlot(bytes32):	infinite
   getStringSlot(bytes32):	infinite
   getStringSlot(string storage pointer):	infinite
   getUint256Slot(bytes32):	infinite

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

======= contracts/openzeppelin/contracts/utils/cryptography/ECDSA.sol:ECDSA =======
Gas estimation:
construction:
   103 + 17200 = 17303
internal:
   _throwError(enum ECDSA.RecoverError):	infinite
   recover(bytes32,bytes memory):	infinite
   recover(bytes32,bytes32,bytes32):	infinite
   recover(bytes32,uint8,bytes32,bytes32):	infinite
   toDataWithIntendedValidatorHash(address,bytes memory):	infinite
   toEthSignedMessageHash(bytes memory):	infinite
   toEthSignedMessageHash(bytes32):	infinite
   toTypedDataHash(bytes32,bytes32):	infinite
   tryRecover(bytes32,bytes memory):	infinite
   tryRecover(bytes32,bytes32,bytes32):	infinite
   tryRecover(bytes32,uint8,bytes32,bytes32):	infinite

======= contracts/openzeppelin/contracts/utils/cryptography/EIP712.sol:EIP712 =======
Gas estimation:

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
