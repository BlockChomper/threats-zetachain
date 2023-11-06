# Architecture Diagrams

# ZetaChain Architectural Diagrams and Security Considerations

![Untitled](Architecture%20Diagrams%2016c61c6551b84f2b8fd0e166b855dcfb/Untitled.png)

## Introduction

In this section we provide high-level conceptual architectural diagrams for security researchers to analyze. Use of diagrams by researchers is highly recommended so that they may gain further insight on attack surface and potential areas of vulnerability. We provide two crucial architectural diagrams for researchers, the Full Node and Cross Chain Transaction Lifecycle (CCTX). These ‘systems’ are arguably the most important to the ZetaChain protocol’s secure operations and we decided to focus our research on these areas as such. Researchers will also be able to cross reference these diagrams to the [Functional Call Map] section of our Alpha research where take a further technical deep dive into the specific function calls that are used during the CCTX lifecycle.

As researchers examine these diagrams we advise that they also consider the granular testing strategy outlined in [Testing 101] in parallel. Also from a high level, we recommend researchers take the following considerations into mind when evaluating the diagrams and determining potential attack vectors:

1. **Load Testing**: Considering the complexity of the protocol, it's essential to perform load testing to ensure the system can handle a high volume of cross-chain transactions. Using these diagrams researchers can visualize areas of the network that may come under stress.
2. **Security Testing**: Given the financial nature of blockchain protocols, penetration testing should be carried out to identify potential vulnerabilities. It is also possible to use these diagrams in combination with specific information on classes of vulnerabilities compiled by [Bytes032]([https://github.com/code-423n4/alpha-zetachain/blob/main/032/101-security.md](https://github.com/code-423n4/alpha-zetachain/blob/main/032/101-security.md)) and determine where they may be applicable to the ZetaChain architecture.
3. **Edge Cases**: Given the intricacies and multiple functionalities, it's crucial to test edge cases like very low or very high amounts, rapid repeated requests, and random data input. Again, optimal usage of these diagrams would be to use them to determine where edge cases resulting in business critical failure could lie.
4. **Integration Testing**: As the system interacts with external chains, integration testing is crucial to ensure smooth interoperability. Using the diagrams, researchers will be able to quickly understand how the different architectural components interact and refine their testing strategy accordingly.
5. **Rollback Testing**: In blockchain systems, it's essential to see how the system behaves after a rollback, especially if an erroneous transaction gets into the blockchain.
6. **Cross-chain Testing**: Ensure tests cover both EVM-to-EVM calls and Bitcoin network (non-EVM)-to-EVM command calls. We recommend that researchers use the diagrams to enhance their understanding of how ZetaChain interacts with external chains.

## ZetaChain Full Node

In this section we provide a visual representation of the ZetaChain Full Node from an Architectural standpoint, noting relevant security considerations where relevant. We note that the existing official [ZetaChain documentation] provides a text based technical breakdown of the requirements to set up and run a full node. However, there are no diagrams in the ZetaChain official documentation to provide an overview of the Full Node or to demonstrate how its different architectural components integrate. To effectively onboard Security Researchers to the ZetaChain stack it is important that they can conceptually visualize how the Full Node operates and focus on specific areas to target for testing.

![full-node.png](Architecture%20Diagrams%2016c61c6551b84f2b8fd0e166b855dcfb/full-node.png)

## Security Considerations & Testing Strategy

### TSS

When researchers are examining the TSS component of the ZetaChain architecture we direct readers back to information we detailed in [Project 101]. Specifically, that Verichains discovered that several popular implementations  of TSS in Go and Rust were vulnerable to key extraction attacks. We recommend security researchers review Verichains [‘TSSHOCK’] exploit and determine if it can be applied to ZetaChain’s architecture. 

Furthermore, compromise or exploitation of the TSS Keysign ceremony could lead to private key compromise. This would be a business critical failure for the ZetaChain network and we recommend that researchers explore different ways in which this could be achieved. We refer the reader to ZetaLotus’s [Testing 101] where we outline a testing strategy including a focus on the keysign ceremony.

### Observer: Observation events and communications

It should be understood that the Observer tracks voting, observer parameters and administration, and validates cross-chain data from the `crosschain` module. Of specific note to diligent researchers, will be the crucial role that the Observer plays in Event Handling and Voting. 

We refer the reader to examine previous audits such as [Zellic] which demonstrated that misconfiguration within emitted events can lead to double spend issues. Furthermore, the reader can also refer to research compiled by by [Bytes032] in Security 101 to delve further into potential issues with Event Handling and Voting, visualizing the vulnerabilities while viewing the architectural diagram. Spoofing, resending, arbitrary dropping and sybil attacks are all also discussed within Bytes032’s Event Handling and Voting sub-sections.

### Ethermint EVM layer

Ethermint Security Considerations: It will be of particular note for Security Researcher’s when evaluating and testing the Ethermint EVM Layer to be cognizant of issues with Ante Handlers. [Ante Handlers]([https://jumpcrypto.com/writing/bypassing-ethermint-ante-handlers/](https://jumpcrypto.com/writing/bypassing-ethermint-ante-handlers/)) are “functions that are executed on each received Cosmos transaction before the actual message processing occurs. They are chained and can either forward a transaction to the next handler or return an error to drop the transaction.” In research condcuted by Flex Wilhelm, he outlines how it is possible to bypass Ethermint Ante Handlers potentially leading to theft of transaction fees or denial of service scenarios. We recommend for researchers to keep this research in mind when evaluating the architectural diagram and seeking inspiration for attack vectors.

## Key Functionality: Cross-Chain Transactions

In this section we will provide a high level conceptual overview of the cross-chain transaction (CCTX) lifecycle. Given that secure cross-chain transactions lie at the core of effective operations within the ZetaChain network, it is crucial that secuirty researchers quickly understand the architecture of the system to formulate attack vectors appropriately. We recommend that that researchers use this diagram in combination with testing strategies outlines in Phase 1 of the Alpha project, along with consideration of previous audit findings and classes of vulnerabilities that may be applicable to the CCTX lifecycle.

![cctx.png](Architecture%20Diagrams%2016c61c6551b84f2b8fd0e166b855dcfb/cctx.png)

## Security Considerations & Testing Strategy

As Security Researcher’s review the architectural and functional diagrams of the CCTX Lifecycle, we refer back to the insights gained from [Testing 101]. In the case of Inbound and Outbound Transaction flows, we recommend researchers to critically analyze the test cases below and use the diagrams to conceptualize how malicious actions can impact functional flows and network state.  

1. Test Observer Monitoring
2. Test TSS Keysign Ceremony
3. Test Transaction Broadcasting
4. Test Outbound Transaction Confirmation
5. Test Voting
6. Test Gas Payments / Increase
7. Simulate Concurrency & Multiple Transactions
8. Check for Transaction Timeout
9. Simulate Network Issues & Recovery
10. Test Error Handling
11. Test Logging Capabilities
12. Check Protocol Fee Assumptions
13. Test 3rd Party Service Integrations
14. Test External Chain Behavior Assumptions