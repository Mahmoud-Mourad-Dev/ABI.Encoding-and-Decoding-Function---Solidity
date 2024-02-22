//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract encodeNumber{
    

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