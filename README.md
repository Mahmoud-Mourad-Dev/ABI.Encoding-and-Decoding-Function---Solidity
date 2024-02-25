# ABI.Encoding-and-Decoding-Function---Solidity
- In Solidity, abi.encode and abi.decode are two essential functions used to convert data between human-readable formats
 and the format used by the Ethereum Virtual Machine (EVM). Understanding these functions is crucial for interacting with smart contracts and building DApps effectively.
- Encoding is always in hexadecimal

## abi.encode
### 1-Purpose:
Takes an array of values and encodes them into a byte string based on the Application Binary Interface (ABI) of the function you're interacting with.
### 2-Input:
An array containing the values you want to encode. These values can be of various types like integers, strings, addresses, etc.
### 3-Output:
A byte string representing the encoded data.
### 4-Usage:
Passing arguments to smart contract functions during transactions.Creating data for custom events emitted by smart contracts.Encoding data for off-chain processing or storage.
## Encode Number example
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract encodeNumber{
    function encodeAge() public pure returns(bytes memory){
        bytes memory age= abi.encode(30);
        return age;

    }
}

// OUTPUT
// bytes: 0x000000000000000000000000000000000000000000000000000000000000001e
```
## Encode String Example
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract encodeString{
    function encodeName() public pure returns(bytes memory){
        bytes memory name= abi.encode("mahmoud");
        return name;

    }
    
}
//OUTPUT
/* bytes: 0x00000000000000000000000000000000000000000000000000000000000000200000000000000000000000
00000000000000000000000000000000076d61686d6f756400000000000000000000000000000000000000000000000000
*/

```

## Encode Address and Integer Example

```solidity

/ SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

contract encodedAddress{
    function encoded(address _address, uint _uint) public pure returns(bytes memory){
        return (abi.encode(_address,_uint));
    }

    /* OUTPUT
    bytes: 0x0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4
    0000000000000000000000000000000000000000000000000000000000000019
    */

}
```

___



## abi.decode
### 1-Purpose:
Decodes a byte string back into its original data types based on the ABI of the function you're interacting with.
### 2-Input:
A byte string representing the encoded data.
### 3-Output:
An array containing the decoded values.
### 4-Usage:
Decoding return values from smart contract functions.
Processing data from custom events emitted by smart contracts.
Decoding data received from off-chain sources.
## decode number example
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract decodeNumber{
    

        function decodeAge(bytes memory encodeInteger) public pure returns(uint256){
        uint256 age= abi.decode(encodeInteger,(uint256));
        return age;
    }
}
/* INPUT
bytes: 0x000000000000000000000000000000000000000000000000000000000000001e

 OUTPUT
 uint256 :30
 */
```


## decode String example
```solidity
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract dencodeString{
    
     // function take bytes memory encodingString as input 

    function decodeName(bytes memory encodedString) public pure returns(string memory){
    string memory name = abi.decode(encodedString, (string));
      return name;
   }

}
/*
INPUT CODE
0x00000000000000000000000000000000000000000000000000000000000000200000000000000000000000
00000000000000000000000000000000076d61686d6f756400000000000000000000000000000000000000000000000000

OUTPUT
mahmoud
*/

```
