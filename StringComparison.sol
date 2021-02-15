pragma solidity ^0.6.0;

contract StringComparison{
    struct Person{
        string name;
    }
    Person somePerson;
    function getName() public view returns(string memory){
        return somePerson.name;
    }
    function compareName() public view returns (bool){
        //string Comparison
        if(keccak256(bytes(somePerson.name))==keccak256(bytes("Satoshi"))){
            return true;
        }else{
            return false;
        }
    }
    function setName(string memory _name) public{
        somePerson = Person(_name);
    }
}
