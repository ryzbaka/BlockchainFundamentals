pragma solidity 0.6.0;

contract Encoding{
    function randomNumberGen(string memory _str) public pure returns (uint){
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand%(10**16);
    }
}
