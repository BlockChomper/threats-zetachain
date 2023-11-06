```mermaid
flowchart TD
  A0{Disrupt Emission\nReward\nDistribution}:::objective
    A0---B1(((OR))):::booleanOr
      B1---C1(Manipulate\nEmissions\nAlgorithm):::condition
        C1---D1(((AND))):::booleanAnd
          D1---E1(Trigger rounding\nerrors in\ncalculations):::condition
          D1---E2(Exploit logic\nerrors to bypass\nlimits):::condition
      B1---C2(Compromise Data\nIntegrity):::condition
        C2---D2(((AND))):::booleanAnd
          D2---E3(Inject false\ndata from external\nchains):::condition
          D2---E4(Corrupt on-chain\nemission\ndata):::condition
      B1---C3(Subvert\nConsensus\nProcess):::condition
        C3---D3(((AND))):::booleanAnd
          D3---E5(Gain control of\nnodes to alter\nrewards):::condition
          D3---E6(Alter consensus\nmessages between\nnodes):::condition
      B1---C4(Undermine\nGovernance):::condition
        C4---D4(((AND))):::booleanAnd
          D4---E7(Abuse governance\nflaws for malicious\nproposals):::condition
          D4---E8(Influence off-chain\nvotes for emission\nchanges):::condition
      B1---C5(Attack TSS\nProtocol):::condition
        C5---D5(((AND))):::booleanAnd
          D5---E9(Disrupt key\ngeneration for reward\ndistribution):::condition
          D5---E10(Compromise nodes\nto forge\nsignatures):::condition
      B1---C6(Resource\nDrain):::condition
        C6---D6(Flood network\nto deplete\nrewards):::condition
      B1---C7(Smart Contract\nVulnerabilities):::condition
        C7---D7(((AND))):::booleanAnd
          D7---E11(Exploit bugs to\nmisdirect\nrewards):::condition
          D7---E12(Circumvent logic for\nunfair reward\nclaims):::condition
```
### Emission Module Attack Tree

#### Attacker Goal: Disrupt Emission Reward Distribution

#### Manipulate Emissions Algorithm
- **Trigger Rounding Errors**
  - Exploit the arithmetic of the rewards algorithm to create rounding errors that benefit attackers.
  
- **Exploit Logic Errors**
  - Take advantage of logic flaws in the emissions algorithm to bypass set limits for personal gain.

#### Compromise Data Integrity
- **Inject False Data from External Chains**
  - Insert incorrect or fraudulent data from other blockchains to corrupt the emission calculations.
  
- **Corrupt On-Chain Emission Data**
  - Directly manipulate on-chain data related to emissions to distort reward distributions.

#### Subvert Consensus Process
- **Gain Control of Nodes**
  - Achieve unauthorized control over nodes to influence the reward determination process.
  
- **Alter Consensus Messages**
  - Intercept and modify the messages exchanged between nodes during the consensus to skew emission rewards.

#### Undermine Governance
- **Exploit Governance Flaws**
  - Abuse any existing weaknesses in the governance system to pass malicious proposals affecting emissions.
  
- **Influence Off-Chain Votes**
  - Manipulate the off-chain voting process to bring about changes in emission policies that favor attackers.

#### Attack Threshold Signature Scheme (TSS) Protocol
- **Disrupt Key Generation**
  - Cause interruptions or errors in the key generation phase of the TSS protocol, affecting reward distribution.
  
- **Compromise Nodes for Forged Signatures**
  - Take over nodes in the TSS to create fraudulent signatures, redirecting rewards to attackers.

#### Resource Drain
- **Network Flooding**
  - Overload the network with unnecessary traffic, aiming to deplete the rewards pool.

#### Exploit Smart Contract Vulnerabilities
- **Misdirect Rewards Through Bugs**
  - Identify and leverage bugs within smart contracts to reroute emissions to unintended recipients.
  
- **Circumvent Logic for Unfair Claims**
  - Bypass contract logic through exploitation to claim rewards that are not rightfully due.
