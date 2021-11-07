pragma solidity ^0.5.16;

contract Election{
    // Model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    //Store Condidate
    mapping(uint => Candidate) public candidates;
    //Constructor
    function Elections () public {
        candidate = "Candidate 1";
    }
}