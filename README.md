# Proposal Smart Contract

This project is a Solidity smart contract for managing proposals with voting functionality. It was created as part of an assignment to build and deploy a voting contract. The contract allows users to create proposals, vote on them, and calculate their state based on voting results.

## Features

- **Create Proposals:** The contract owner can create new proposals with a command, description, and a total vote count required to conclude.
- **Vote on Proposals:** Users can cast their votes (approve, reject, or abstain) on active proposals.
- **Proposal State Calculation:** The contract calculates the state of a proposal based on the majority of votes.
- **Terminate Proposals:** The contract owner can terminate active proposals.
- **Ownership Management:** The contract owner can transfer ownership to another address.

## Contract Details

### **Contract Functions**

1. **create**
   - **Description:** Creates a new proposal.
   - **Parameters:**
     - `cmd`: Command related to the proposal.
     - `_description`: A brief description of the proposal.
     - `_total_vote_to_end`: Total votes required to conclude the proposal.
   - **Access Control:** Only callable by the contract owner.

2. **vote**
   - **Description:** Allows users to vote on the current active proposal.
   - **Parameters:**
     - `choice`: Voting option (1 = Approve, 2 = Reject, 0 = Pass).

3. **getCurrentProposal**
   - **Description:** Fetches the current active proposal details.

4. **terminateProposal**
   - **Description:** Terminates the current active proposal.
   - **Access Control:** Only callable by the contract owner.

5. **setOwner**
   - **Description:** Transfers ownership to a new address.
   - **Access Control:** Only callable by the contract owner.

6. **getProposal**
   - **Description:** Retrieves the details of a proposal by its ID.

### **Modifiers**
- **onlyOwner:** Restricts function access to the contract owner.
- **active:** Ensures the current proposal is active.
- **newVoter:** Ensures the caller has not already voted on the current proposal.

### **Deployment Information**
- **Testnet Used:** [Goerli/Rinkeby/BNB Chain Testnet]  
- **Contract Address:** `INSERT_YOUR_TESTNET_ADDRESS_HERE`
