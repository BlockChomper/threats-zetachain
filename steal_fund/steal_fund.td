__Goal: Steal user funds__

- **Exploit Inbound Transaction Processing**
  + Inject malicious code into a contract triggered by a CCTX.
  + Submit transactions with manipulated contract addresses to redirect funds.
  + Use incorrect destination data to reroute funds to an attacker-controlled address.
  + Modify transaction amounts in CCTXs to withdraw unauthorized token amounts.

- **Compromise Account Security**
  + Phishing attacks to steal user credentials and access wallets directly.
  + Deploy keyloggers or malware to capture user keys during transaction signing.
  + Brute force or social engineering to obtain passwords and seed phrases.

- **Intercept Network Traffic**
  + Sniff unencrypted network traffic to capture transaction details and keys.
  + Perform man-in-the-middle attacks on insecure networks to alter transaction data.

- **Manipulate Outbound Transactions**
  + Intercept and alter outbound transaction data to misappropriate funds.
  + Compromise observer nodes to validate fraudulent transactions.
  + Hack into the TSS keysign process to authorize illegitimate withdrawals.

- **Control Over Network Consensus**
  + Gain majority control of consensus nodes to validate false transactions.
  + Sybil attack to create multiple fake identities and influence network decisions.

- **Disrupt Transaction Verification**
  + Send transactions with invalid signatures to create verification confusion.
  + Flood the network with transactions to overwhelm validation processes.

- **Abuse Smart Contract Vulnerabilities**
  + Identify and exploit smart contract bugs to drain funds from contracts.
  + Initiate transactions that trigger contract functions to release funds improperly.

- **Undermine System Configuration**
  + Exploit misconfigurations in node software to gain unauthorized access.
  + Utilize system updates or patches to introduce vulnerabilities.

- **Market Manipulation for Economic Gain**
  + Conduct pump and dump schemes to inflate token value and sell at a peak.
  + Manipulate token liquidity to trigger slippage and acquire tokens below market value.

- **Perform Double Spend Attacks**
  + Exploit transaction malleability to spend the same funds multiple times.
  + Race attack by broadcasting two conflicting transactions simultaneously.