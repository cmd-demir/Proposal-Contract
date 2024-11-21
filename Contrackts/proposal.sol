// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ProposalCountract {

    struct Propasal {
        string voting;
        uint256 approve;
        uint256 reject;
        uint256 pass;
        uint256 total_vote_to_end;
        bool current_state;
        bool is_active;

    }

    mapping(uint256 => Propasal) propasal_history;
    
}