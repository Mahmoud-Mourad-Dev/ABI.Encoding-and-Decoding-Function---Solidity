// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

contract encodedAndDecoded{
    function encode(string memory _name, uint _age) public pure returns(bytes memory){
        return (abi.encode(_name ,_age));


    }

    function decode(bytes memory encodedData) public pure returns(string memory _name,uint _age){
        (_name,_age)=abi.decode(encodedData,(string,uint));
    }
    /*
    OUTPUT 
    when input name= ahmed and age= 15 the output 
    0x0000000000000000000000000000000000000000000000
    000000000000000040000000000000000000000000000000
    000000000000000000000000000000000f00000000000000
    000000000000000000000000000000000000000000000000
    0561686d6564000000000000000000000000000000000000
    000000000000000000
    */
}