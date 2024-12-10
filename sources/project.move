module MyModule::TokenVotingSystem {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct Proposal has store, key {
        votes: u64,       // Total number of votes
        creator: address, // Address of the proposal creator
    }

    /// Function to create a new proposal.
    public fun create_proposal(owner: &signer) {
        let proposal = Proposal {
            votes: 0,
            creator: signer::address_of(owner),
        };
        move_to(owner, proposal);
    }
}
