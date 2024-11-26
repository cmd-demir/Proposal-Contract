// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ProposalContract {

    uint256 private counter;

    struct Proposal {
        string title;
        string voting;
        string description;
        uint256 approve;
        uint256 reject;
        uint256 pass;
        uint256 total_vote_to_end;
        bool current_state;
        bool is_active;

    }

    mapping(uint256 => Proposal) proposal_history;

    function create(string calldata title, string calldata _description, uint256 _total_vote_to_end) external{
        counter += 1;
        proposal_history[counter] = Proposal(title, " ", _description, 0, 0, 0, _total_vote_to_end, false, true); 
}
    
}