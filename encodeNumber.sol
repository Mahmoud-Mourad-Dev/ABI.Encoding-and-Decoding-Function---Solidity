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