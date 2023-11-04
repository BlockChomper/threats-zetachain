__Goal: Loss of user funds by permanent freezing__

- **Inbound Transaction Handling Issues**
  + Send invalid CCTXs to cause processing errors.
  + Use wrong contract addresses to make transactions fail.
  + Alter destination data to misroute transactions.
  + Input incorrect token amounts to mess with account balances.
  + Provide wrong gas amounts to stall transactions.

- **System Overload**
  + Flood with too many transactions to overwhelm the system.
  + Send transactions faster than the rate limit to force a system slowdown.

- **Replay Attack Exploitation**
  + Resend old transactions to trick the system into processing them again.

- **Transaction Delays**
  + Start transactions that don't finish to cause system timeouts.
  + Mess with the network during transactions to create instability.

- **Error Handling and Logging Gaps**
  + Submit malformed transactions to trigger unhelpful error messages.
  + Challenge the completeness of transaction logs for auditing failures.

- **External Chain Weaknesses**
  + Send transactions during peak times to test how congestion is handled.
  + Disrupt or trick external services like oracles.

- **Outbound Transaction Weaknesses**
  + Start outbound transactions with missing information to test rejection.
  + Feed false data to observers to mislead transaction verification.
  + Tamper with the data during the TSS keysign process.

- **Network Communication Interference**
  + Block transactions from being broadcasted to external chains.
  + Prevent confirmations from being observed to delay finality.

- **Consensus Mechanism Disruption**
  + Cause confusion in observer voting to invalidate transaction confirmations.
  + Send transactions with gas price issues to disrupt transaction processing.

- **Economic Attack and Majority Control**
  + Buy or influence a majority of tokens to gain control over the network.
  + Manipulate market prices to affect transaction validity and network control.

- **System Flaws and Misconfigurations**
  + Find and trigger error handling bugs to crash services.
  + Exploit outdated software libraries with known issues.
  + Cause number overflows or underflows to corrupt transaction processing.
  + Take advantage of system setup mistakes for unauthorized access or actions.