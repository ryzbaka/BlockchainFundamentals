pragma solidity ^0.6.0;

contract Arrays{
    struct Person{
        string name;
        uint age;
    }
    Person [] public people;
    uint[] public randomUintArray =[1,2,3];
    string[] public randomStringArray = ["Apple","Banana"];
    uint[][] public array2d =[[1,2],[3,4]];
    
    function addPerson(string memory _name,uint age) public{
        people.push(Person(_name,age));
    }
    function getPeopleNumber()public view returns(uint){
        return people.length;
    }
    function getPersonName(uint index) public view returns(string memory){
        if(index>=people.length){
            return "Invalid index.";
        }
        else{
            return people[index].name;
        }
    }
    function removePerson(uint _index) public{
        //deleting elements from array while preserving order.
        //delete array[index] is expensive and leads to gaps
        if(_index==people.length-1){
            people.pop();
        }
        if(_index<people.length){
            for(uint i=_index;i<people.length-1;i++){
                people[i] = people[i+1];
            }
            people.pop();
        }
    }
}
