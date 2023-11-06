# Cross chain module key invariant

1. The crosschain module is required to handle inbound transactions from the originating blockchain.
2. The module is responsible for ensuring that outbound transactions reach their intended destination blockchain.
3. The data for a transaction received on the destination chain should be identical to that of the source chain.
4. The crosschain module must manage revert effectively; if a transaction is reversed, all affected states must also be reversed.
5. The module must accurately manage transaction fees and gas and payments properly

# Emission module key invariant:

1. The emission module must distribute the correct amount of rewards to each validator for every block.
2. The emission module must store the undistributed amount for TSS and observers in their respective pools.
3. The emission module must validate the following parameters:
   - Maximum bond factor
   - Minimum bond factor
   - Average block time
   - Target bond ratio
   - Validator emission percentage
   - Observer emission percentage
   - TSS Signer emission percentage
   - Duration factor constant
4. The emission module must ensure that reward distribution remains accurate when any of these parameters are updated, whether they are increased or decreased.

# Fungible module key invariant

1.The fungible module must ensure the proper deployment of foreign coins on ZetaChain.
2. The fungible module must handle the deployment on system contracts and the wrapping of ZETA tokens effectively.
3. The fungible module is responsible for managing deposits to and calling omnichain smart contracts on ZetaChain from connected chains.
4. The fungible module needs to accurately parse event emissions.
5. The fungible module must manage token minting, decimal precision, and account balances correctly.

# Observer module key invariant

1. **Ballot Tracking Invariant**: The observer module must consistently track all ballots used for voting, ensuring a reliable record of each voting action.

2. **Chain-Observer Mapping Invariant**: There must be a correct and immutable mapping between chains and observer accounts, established during the genesis, to verify the authorization of observer validators.

3. **Supported Chains List Invariant**: A current list of supported connected chains must be maintained, ensuring that the module only interacts with recognized networks.

4. **Core Parameters Consistency Invariant**: Core parameters, such as contract addresses and outbound transaction schedule intervals, must remain accurate and reflect the system's configuration.

5. **Observer Parameters Validation Invariant**: Observer parameters like ballot threshold and minimum observer delegation must be validated and enforced to uphold the integrity of the voting process.

6. **Admin Policy Parameters Integrity Invariant**: Admin policy parameters must be secured and managed to prevent unauthorized changes that could compromise the system.

7. **CRUD Operations Invariant**: The module must perform create, read, update, and delete operations on ballots without fail, ensuring the integrity of the voting records.

8. **Ballot Finalization Helper Functions Invariant**: Helper functions must accurately determine the finalization status of ballots, facilitating other modules in making decisions based on finalized votes.

9. **Observer Validator Authorization Invariant**: Only authorized observer validators, who run the zetaclient and zetacored, are allowed to vote on cross-chain transactions, ensuring controlled and legitimate voting.

10. **Transaction Authorization Verification Invariant**: The module must verify that an observer validator is authorized to vote on transactions specific to a connected chain, reinforcing the system's security protocols. 