
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

======= contracts/openzeppelin/contracts/interfaces/IERC5267.sol:IERC5267 =======
Gas estimation:

======= contracts/openzeppelin/contracts/security/Pausable.sol:Pausable =======
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
