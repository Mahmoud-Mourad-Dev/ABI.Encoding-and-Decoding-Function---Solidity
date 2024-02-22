//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract dencodeString{
    
     // function take bytes memory encodingString as input 

    function decodeName(bytes memory encodedString) public pure returns(string memory){
    string memory name = abi.decode(encodedString, (string));
      return name;
   }

}
