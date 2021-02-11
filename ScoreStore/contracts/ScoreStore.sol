pragma solidity ^0.5.16;

contract ScoreStore{
    mapping (string=>int) private PersonScores; //dictionary with key:string and value:int

    function AddPersonScore(string memory name,int score) public{
        PersonScores[name]=score;
    }

    function GetScore(string memory name) public returns (int){
        return PersonScores[name];
    }
}
//ints don't require data locations (I think)