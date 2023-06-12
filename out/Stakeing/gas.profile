
======= contracts/Stakeing/SunNFTStakeing.sol:StakeingPool =======
Gas estimation:
construction:
   infinite + 3409000 = infinite
external:
   CheckPrizePool(uint256[],(string,uint256,uint256,uint256,address,uint256,bool)):	infinite
   CreatePool(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[],bytes):	infinite
   Drain(uint256):	infinite
   Harvest(address,uint256,address):	infinite
   HarvestAndUnStakeMe(uint256):	infinite
   HarvestMe(uint256):	infinite
   HarvestedPrizes(address,uint256):	2711
   NewPoolPolicy(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[]):	infinite
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   Pools(uint256):	infinite
   PoolsIDs(uint256):	4651
   PrizePools(uint256):	19755
   PrizePoolsIDs(uint256):	4628
   Stake(uint256):	infinite
   StakeMany(uint256,uint256):	infinite
   TicketCount((bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   TicketCountById(uint256):	infinite
   UnStake(uint256,uint256):	infinite
   balanceOf(address,uint256):	2719
   balanceOfBatch(address[],uint256[]):	infinite
   burn(address,uint256,uint256):	infinite
   burnBatch(address,uint256[],uint256[]):	infinite
   exists(uint256):	2515
   isApprovedForAll(address,address):	infinite
   onERC1155BatchReceived(address,address,uint256[],uint256[],bytes):	infinite
   onERC1155Received(address,address,uint256,uint256,bytes):	infinite
   onERC721Received(address,address,uint256,bytes):	infinite
   owner():	2368
   renounceOwnership():	infinite
   safeBatchTransferFrom(address,address,uint256[],uint256[],bytes):	infinite
   safeTransferFrom(address,address,uint256,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26798
   setURI(string):	infinite
   supportsInterface(bytes4):	infinite
   totalSupply(uint256):	2492
   transferOwnership(address):	28409
   uri(uint256):	infinite
internal:
   _beforeTokenTransfer(address,address,address,uint256[] memory,uint256[] memory,bytes memory):	infinite
   unStake(address,uint256,uint256):	infinite

======= contracts/Stakeing/SunPool.sol:StakePools =======
Gas estimation:
construction:
   1219 + 1175800 = 1177019
external:
   CheckPrizePool(uint256[],(string,uint256,uint256,uint256,address,uint256,bool)):	infinite
   HarvestedPrizes(address,uint256):	2643
   NewPoolPolicy(uint256,(string,uint256,uint256,uint256,address,uint256,bool),uint256[]):	infinite
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   Pools(uint256):	infinite
   PoolsIDs(uint256):	4584
   PrizePools(uint256):	19748
   PrizePoolsIDs(uint256):	4605
   TicketCount((bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   TicketCountById(uint256):	infinite

======= contracts/Stakeing/SunPoolPrize.sol:StakePoolPrize =======
Gas estimation:
construction:
   719 + 685000 = 685719
external:
   HarvestedPrizes(address,uint256):	2643
   NewPrizePool(uint256,(bool,bool,uint16,address,uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256)):	infinite
   PrizePools(uint256):	19703
   PrizePoolsIDs(uint256):	4605
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

======= contracts/Sun721NFT.sol:SunToken721 =======
Gas estimation:
construction:
   infinite + 1445600 = infinite
external:
   approve(address,uint256):	infinite
   balanceOf(address):	2631
   burn(uint256):	infinite
   getApproved(uint256):	4787
   isApprovedForAll(address,address):	infinite
   name():	infinite
   owner():	2375
   ownerOf(uint256):	2618
   renounceOwnership():	infinite
   safeMint(address,uint256,string):	infinite
   safeTransferFrom(address,address,uint256):	infinite
   safeTransferFrom(address,address,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26769
   supportsInterface(bytes4):	infinite
   symbol():	infinite
   tokenURI(uint256):	infinite
   totalSupply():	2340
   transferFrom(address,address,uint256):	infinite
   transferOwnership(address):	28421
internal:
   _baseURI():	infinite
   _burn(uint256):	infinite

======= contracts/SunToken.sol:SunToken20 =======
Gas estimation:
construction:
   infinite + 1260200 = infinite
external:
   DOMAIN_SEPARATOR():	infinite
   allowance(address,address):	infinite
   approve(address,uint256):	24671
   balanceOf(address):	2626
   burn(uint256):	52989
   burnFrom(address,uint256):	infinite
   decimals():	244
   decreaseAllowance(address,uint256):	26964
   eip712Domain():	infinite
   increaseAllowance(address,uint256):	infinite
   mint(address,uint256):	infinite
   name():	infinite
   nonces(address):	2658
   owner():	2418
   pause():	infinite
   paused():	2370
   permit(address,address,uint256,uint256,uint8,bytes32,bytes32):	infinite
   renounceOwnership():	infinite
   symbol():	infinite
   totalSupply():	2371
   transfer(address,uint256):	53323
   transferFrom(address,address,uint256):	infinite
   transferOwnership(address):	28439
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

======= contracts/openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol:ERC1155Holder =======
Gas estimation:
construction:
   255 + 214800 = 215055
external:
   onERC1155BatchReceived(address,address,uint256[],uint256[],bytes):	infinite
   onERC1155Received(address,address,uint256,uint256,bytes):	infinite
   supportsInterface(bytes4):	389

======= contracts/openzeppelin/contracts/token/ERC1155/utils/ERC1155Receiver.sol:ERC1155Receiver =======
Gas estimation:

======= contracts/openzeppelin/contracts/token/ERC20/ERC20.sol:ERC20 =======
Gas estimation:
construction:
   infinite + 469000 = infinite
external:
   allowance(address,address):	infinite
   approve(address,uint256):	24647
   balanceOf(address):	2582
   decimals():	243
   decreaseAllowance(address,uint256):	26918
   increaseAllowance(address,uint256):	infinite
   name():	infinite
   symbol():	infinite
   totalSupply():	2303
   transfer(address,uint256):	51089
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
   infinite + 939000 = infinite
external:
   approve(address,uint256):	infinite
   balanceOf(address):	2630
   getApproved(uint256):	4787
   isApprovedForAll(address,address):	infinite
   name():	infinite
   ownerOf(uint256):	2552
   safeTransferFrom(address,address,uint256):	infinite
   safeTransferFrom(address,address,uint256,bytes):	infinite
   setApprovalForAll(address,bool):	26702
   supportsInterface(bytes4):	513
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
   145 + 101000 = 101145
external:
   onERC721Received(address,address,uint256,bytes):	infinite

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

======= contracts/openzeppelin/contracts/utils/Counters.sol:Counters =======
Gas estimation:
construction:
   96 + 17000 = 17096
internal:
   current(struct Counters.Counter storage pointer):	infinite
   decrement(struct Counters.Counter storage pointer):	infinite
   increment(struct Counters.Counter storage pointer):	infinite
   reset(struct Counters.Counter storage pointer):	infinite

======= contracts/openzeppelin/contracts/utils/ShortStrings.sol:ShortStrings =======
Gas estimation:
construction:
   96 + 17000 = 17096
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
   96 + 17000 = 17096
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
   96 + 17000 = 17096
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
   96 + 17000 = 17096
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
   96 + 17000 = 17096
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
   96 + 17000 = 17096
internal:
   abs(int256):	infinite
   average(int256,int256):	infinite
   max(int256,int256):	infinite
   min(int256,int256):	infinite
