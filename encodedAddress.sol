// SPDX-License-Identifier: MIT
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