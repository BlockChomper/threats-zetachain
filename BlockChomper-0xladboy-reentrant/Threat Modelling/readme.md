# Threat Modelling

![https://media.discordapp.net/attachments/1137114558016798793/1169308067071000716/block_chomper_a_private_dectective_in_Quantum_Noir_style_featur_63dbfd69-85f4-43b7-9205-0d80dff2607e.png?ex=6554edff&is=654278ff&hm=557a55d8ec1edff3211f0f43e5faf30b45ccb0e813900bc8b372509a3b465a75&=&width=1335&height=889](https://media.discordapp.net/attachments/1137114558016798793/1169308067071000716/block_chomper_a_private_dectective_in_Quantum_Noir_style_featur_63dbfd69-85f4-43b7-9205-0d80dff2607e.png?ex=6554edff&is=654278ff&hm=557a55d8ec1edff3211f0f43e5faf30b45ccb0e813900bc8b372509a3b465a75&=&width=1335&height=889)

## Introduction

In this section we provide a structured approach for security researchers to identify and document potential threats to the ZetaChain network and outline the harm that could be caused from the perspective of the attacker.  Our goal is to provide a strategic overview of the potential risks to the project and enable researchers to visualize attack vectors, helping to refine their testing strategy. The ZetaLotus team took the approach of providing both high level attack trees, covering attacker goals of consensus manipulation, denial of service, freezing and stealing funds. We then deep dive into more granular attack trees targeting the custom ZetaChain modules, analyzing methods to disrupt the crosschain, emission, fungible and observer modules. We then further outline key invariants, which are properties that must always hold true for the ZetaChain system to function securely. Lastly, we even provide a guide for researchers to compose further custom attack trees specific to their end goal and demonstrate how AI can be used to assist researchers in attacking!

## Threatdown & How to Render Attack Trees

The tool used to generate the attack trees was [Threatdown]([https://threatdown.xyz/#what-is-threat-modeling](https://threatdown.xyz/#what-is-threat-modeling)). In each attack goal specific folder we provide the original threatdown source code, an SVG output generation and also an explanation readme to further focus researchers attention when using the attack trees.

Please note that the ********SVG file should be viewed ‘Raw’******** when viewing through the Git interface for it to render as intended by the author. 

Here's a brief summary of how Threatdown works:

- **Conditions**: These can be actions or states within the system that may lead to security risks.
- **Assumptions**: These are potential issues or states marked with a bullet ending in a question mark.
- **Mitigations**: These are solutions or safeguards that can block a condition or assumption, marked as complete or incomplete [ ].
- **Logical Combinations**: Elements within the threat model can be combined using AND (+) or OR (-) bullets.
- **Comments**: Nested comments can be added under any item with a ">" to provide additional explanations.

To visualize a threat model created with Threatdown, one can run a command to generate a graph, which helps in visualizing the interconnections and dependencies of various components within the threat model.

Lastly, threat models, as documented by Threatdown or any other method, should be treated with high sensitivity, as they contain 
critical information about the system's vulnerabilities that could be exploited if fallen into the wrong hands. Threatdown is maintained by 
Code4rena, and they encourage contributions to develop, extend, and improve the standard through collaboration on GitHub.

## High Level Attack Trees

1. [Consensus Manipulation](BlockChomper-0xladboy-reentrant/Threat Modelling/high_level_threat_modelling/consensus_manipulation)
2. [Denial of Service](BlockChomper-0xladboy-reentrant/Threat Modelling/high_level_threat_modelling/denial_of_service)
3. [Freeze Funds](BlockChomper-0xladboy-reentrant/Threat Modelling/high_level_threat_modelling/freeze_funds)
4. [Steal Funds](BlockChomper-0xladboy-reentrant/Threat Modelling/high_level_threat_modelling/steal_funds)

## Module Level Attack Trees

1. ![Crosschain Module]([BlockChomper-0xladboy-reentrant/Threat Modelling/modules_level_threat_modelling/disrupt_cross_chain_module](https://github.com/BlockChomper/threats-zetachain/tree/90f1f42b499ffe2dac783706813cccf4ab3d31f0/BlockChomper-0xladboy-reentrant/Threat%20Modelling/high_level_threat_modelling/consensus_manipulation))
2. [Emission Module](BlockChomper-0xladboy-reentrant/Threat Modelling/modules_level_threat_modelling/disrupt_emission_module)
3. [Fungible Module](BlockChomper-0xladboy-reentrant/Threat Modelling/modules_level_threat_modelling/disrupt_fungible_module)
4. [Observer Module](BlockChomper-0xladboy-reentrant/Threat Modelling/modules_level_threat_modelling/disrupt_oberserver_module)

## Key Invariants to Hold

In [this section] as aforementioned, we outline key invariants, which are properties that must always hold true for the ZetaChain system to function securely. 

## How to Generate more Attack Trees specific to ZetaChain

We recommend that if security researchers want to generate more attack trees, it will be effective to use a smaller goal or ‘leaf’ from an existing tree as a starting point. Using a ‘leaf’ from the attack trees we have already provided as the attacker end goal will allow a different tree to be created which is more granular and specific to the researchers objective. This approach will help to systematically uncover different security threats by expanding on specific parts of the larger attack surface.

## How to use AI to assist with Attack Tree Interpretation

As a bonus, we outline a methodology using AI to further enhance researchers ability to utilize the attack trees that we have provided.

1. Copy the content of `attack_tree.td`.
2. Paste it into a conversation with ChatGPT.
3. Request ChatGPT to generate a list of "can you" questions for auditors and security researchers based on the provided attack tree.
here is the an example output

```
Based on the attack tree provided, here's a list of "can you" questions for auditors and security researchers to probe for vulnerabilities:

1. **Inbound Transaction Handling**
   - Can you send malformed transactions to generate processing errors?
   - Can you submit transactions to incorrect contract addresses to induce failures?
   - Can you manipulate transaction destination data to misroute funds?
   - Can you input incorrect token amounts to disrupt account balances?
   - Can you provide the wrong gas amounts to cause transaction stalling?

2. **System Overload**
   - Can you overload the system with excessive transactions?
   - Can you exceed transaction rate limits to trigger a system slowdown?

3. **Replay Attack**
   - Can you perform a replay attack to double-process transactions?

4. **Transaction Delays**
   - Can you initiate transactions that persist without completion to timeout the system?
   - Can you interfere with network traffic to destabilize transaction processing?

5. **Error Handling and Logging**
   - Can you trigger ambiguous error messages through malformed transactions?
   - Can you reveal deficiencies in transaction logs to prevent proper auditing?

6. **External Chain Dependence**
   - Can you exploit peak times to test the system's congestion management?
   - Can you compromise external services like oracles to affect system reliability?

7. **Outbound Transaction Issues**
   - Can you test the system's response to incomplete outbound transaction data?
   - Can you deceive transaction observers with incorrect data?

8. **Network Communication**
   - Can you block or delay transaction broadcasting to external chains?
   - Can you prevent confirmations from being recognized to delay transaction finality?

9. **Consensus Mechanism**
   - Can you disrupt observer voting to challenge transaction confirmations?
   - Can you cause transaction processing issues through gas pricing manipulation?

10. **Economic Attacks**
    - Can you obtain network control through token majority acquisition?
    - Can you manipulate market prices to influence transaction validity?

11. **System Flaws and Configuration Errors**
    - Can you uncover and exploit error handling bugs to cause service outages?
    - Can you take advantage of outdated software libraries with known vulnerabilities?
    - Can you induce number overflows or underflows to corrupt transaction logic?
    - Can you exploit system misconfigurations for unauthorized actions?
```
