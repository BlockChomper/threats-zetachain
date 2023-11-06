## Goal: Freeze Funds

**Inbound Transaction Handling Issues**
- Invalid CCTXs are sent to disrupt the normal transaction process.
- Incorrect contract addresses are used to ensure transaction failures.
- Destination data is altered to cause transaction misrouting.
- False token amounts are input to create balance discrepancies.
- Wrong gas amounts are provided to intentionally stall transactions.

**System Overload and Replay Attacks**
- The network is flooded with transactions to exceed its processing limit.
- Transactions are sent too rapidly, testing the system's rate limit defenses.
- Old transactions are resent to challenge the system's replay safeguards.

**Transaction Delays and Network Issues**
- Transactions are initiated but left unfinished to exploit timeout protocols.
- Network stability is compromised during transaction processing to cause delays.

**Error Handling and Logging Vulnerabilities**
- Malformed transactions are used to provoke inadequate error messages.
- Transaction logs are scrutinized for incomplete entries, potentially affecting audit trails.

**External Chain and Service Disruptions**
- Peak time transactions on external chains are sent to test congestion responses.
- Services like oracles are disrupted to test the system's external dependency handling.

**Outbound Transaction Manipulation**
- Outbound transactions with key details missing are initiated to test system checks.
- Observers are given false data to see if transaction verification can be misled.
- Data tampering during the TSS keysign process aims to undermine signature validity.

**Network Communication and Consensus Disruption**
- Transaction broadcasting to external chains is blocked to test resilience.
- Confirmation by observers is delayed to impact transaction finality.
- Observer voting processes are confused to question transaction confirmations.
- Gas price settings are manipulated to cause transaction processing errors.

**Economic Dominance and Market Manipulation**
- A majority token stake is acquired to influence network decisions.
- Market prices are tampered with to challenge the stability and control of the network.

**System Configuration and Security Flaws**
- Known error handling flaws are targeted to cause system crashes.
- Outdated and vulnerable software libraries are exploited.
- Transactions are crafted to cause numerical overflows or underflows.
- System misconfigurations are identified and used for unauthorized actions.
