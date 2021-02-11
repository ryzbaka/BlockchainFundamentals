pragma solidity ^0.6.0;

//variables,data types,etc.

contract MyContract{
    //A state variable is stored in the blockchain itself.
    uint public myUint =1; //defaults to uint256.
    int public something =-1;
    uint256 public my256 = 1;
    uint8 public my8 = 1;
    
    string public myString = "Hello world";
    address public myAddress = 0xA6Bdf6a1DC07d5ee0F711ccc6631eB77Ab6309E1;//ethereum wallet address.
    
    struct Person{
        string name;
        uint age;
    }
    
    Person[] public people;
    
    
    function getValue() public pure returns(uint) {
        uint value = 1; //this is a local variable. It is not recorded in the blockchain itself.
        value+=1;
        return value;
    }
    
    function getMyUint() public view returns(uint){
        return myUint;
    }
    
    function addPerson(string memory _name,uint age) public{
        people.push(Person(_name,age));
    }
    
    function removePerson() public{
        people.pop();
    }
    
}
