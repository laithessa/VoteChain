pragma solidity ^0.5.15;

// Contract for a decentralized voting system
contract Voting {

    // Struct to represent a candidate
    struct Candidate {
        uint id;            // Unique ID of the candidate
        string name;        // Name of the candidate
        string party;       // Political party of the candidate
        uint voteCount;     // Number of votes received by the candidate
    }

    // Mapping to store candidates with their unique ID as the key
    mapping (uint => Candidate) public candidates;

    // Mapping to track whether an address (voter) has already voted
    mapping (address => bool) public voters;

    // Variables to track the total number of candidates and voting period
    uint public countCandidates;   // Total number of candidates
    uint256 public votingEnd;      // Voting end timestamp
    uint256 public votingStart;    // Voting start timestamp

    // Function to add a new candidate to the election
    // Accepts the candidate's name and party as inputs
    // Returns the unique ID of the newly added candidate
    function addCandidate(string memory name, string memory party) public returns(uint) {
        countCandidates++; // Increment the candidate count
        candidates[countCandidates] = Candidate(countCandidates, name, party, 0); // Add the candidate to the mapping
        return countCandidates; // Return the candidate's ID
    }

    // Function to cast a vote for a specific candidate
    // Accepts the candidate's ID as input
    function vote(uint candidateID) public {
        // Ensure the voting period is active
        require((votingStart <= now) && (votingEnd > now), "Voting is not active");

        // Ensure the candidate ID is valid
        require(candidateID > 0 && candidateID <= countCandidates, "Invalid candidate ID");

        // Ensure the voter has not already voted
        require(!voters[msg.sender], "You have already voted");

        // Mark the voter as having voted
        voters[msg.sender] = true;

        // Increment the vote count for the selected candidate
        candidates[candidateID].voteCount++;
    }

    // Function to check if the caller has already voted
    // Returns true if the voter has voted, false otherwise
    function checkVote() public view returns(bool) {
        return voters[msg.sender];
    }

    // Function to get the total number of candidates
    // Returns the count of candidates
    function getCountCandidates() public view returns(uint) {
        return countCandidates;
    }

    // Function to get details of a specific candidate by their ID
    // Returns the candidate's ID, name, party, and vote count
    function getCandidate(uint candidateID) public view returns (uint, string memory, string memory, uint) {
        return (
            candidateID,
            candidates[candidateID].name,
            candidates[candidateID].party,
            candidates[candidateID].voteCount
        );
    }

    // Function to set the start and end dates for voting
    // Accepts the start and end timestamps as inputs
    function setDates(uint256 _startDate, uint256 _endDate) public {
        // Ensure dates are being set for the first time and are valid
        require(
            (votingEnd == 0) && 
            (votingStart == 0) && 
            (_startDate + 1000000 > now) && 
            (_endDate > _startDate), 
            "Invalid dates"
        );

        // Set the voting start and end dates
        votingStart = _startDate;
        votingEnd = _endDate;
    }

    // Function to get the start and end dates for voting
    // Returns the start and end timestamps
    function getDates() public view returns (uint256, uint256) {
        return (votingStart, votingEnd);
    }
}
