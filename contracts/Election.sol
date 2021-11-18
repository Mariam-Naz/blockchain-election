pragma solidity >=0.4.16 <0.9.0;

contract Election{
    // Model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    //Store accounts that have votes
    mapping(address => bool) public votes;
    //Store Condidate
    mapping(uint => Candidate) public candidates;

    uint public candidatesCount;
    //Constructor
     constructor () public{
       addCandidate("Candidate 1");
       addCandidate("Candidate 2");
    }

    //Add Candidate Function
    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidatesId) public{
        require(!votes[msg.sender]);

        require(_candidatesId > 0 && _candidatesId <= candidatesCount);

        votes[msg.sender] = true;

        candidates[_candidatesId].voteCount++;

    }
}