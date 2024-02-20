//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract encodeString{
    function encodeName() public pure returns(bytes memory){
        bytes memory age= abi.encode("mahmoud");
        return age;

    }
    
}
