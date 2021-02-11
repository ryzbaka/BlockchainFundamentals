pragma solidity ^0.6.0;

contract Counter{
    // uint count; //unsigned integer. This is a state variable stored in the blockchain.
    //uint count = 0;
    // constructor() public{
        //Constructor for the contract.
        // count=0;
    // }
    
    // function getCount() public view returns(uint){  //look up "view"
    //     return count;
    // }
    uint public count = 0;
    function incrementCount() public {
        //writing data to the blockchain
        //every record in the blockchain is a transaction.
        //this is a transaction.
        
        //Every transaction has a gas fee.
        
        count+=1;
    }
}
