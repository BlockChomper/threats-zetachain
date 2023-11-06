# ZetaLotus Alpha Repo, Phase 2

![https://media.discordapp.net/attachments/1137114558016798793/1169310151275184138/block_chomper_a_planet_killer_in_Quantum_Noir_style_featuring_b_2c5a8d53-cf28-4747-b621-88ec21a01509.png?ex=6554eff0&is=65427af0&hm=cee3fdb652c04f45e92b08411655eee4653a12f7ab230be79d175ddf0746f72f&=&width=1335&height=889](https://media.discordapp.net/attachments/1137114558016798793/1169310151275184138/block_chomper_a_planet_killer_in_Quantum_Noir_style_featuring_b_2c5a8d53-cf28-4747-b621-88ec21a01509.png?ex=6554eff0&is=65427af0&hm=cee3fdb652c04f45e92b08411655eee4653a12f7ab230be79d175ddf0746f72f&=&width=1335&height=889)

## Threat Modelling

In the [Threat Modelling] section we provide a structured approach for security researchers to identify and document potential threats to the ZetaChain network and outline the harm that could be caused from the perspective of the attacker.  Our goal is to provide a strategic overview of the potential risks to the project and enable researchers to visualize attack vectors, helping to refine their testing strategy. The ZetaLotus team took the approach of providing both high level attack trees, covering attacker goals of consensus manipulation, denial of service, freezing and stealing funds. We then deep dive into more granular attack trees targeting the custom ZetaChain modules, analyzing methods to disrupt the crosschain, emission, fungible and observer modules. We then further outline key invariants, which are properties that must always hold true for the ZetaChain system to function securely. Lastly, we even provide a guide for researchers to compose further custom attack trees specific to their end goal and demonstrate how AI can be used to assist researchers in attacking!

## Architectural Diagrams

## Functional Call Map

While in [Architectural Diagrams] we provided a high-level overview of the architecture and important areas of the ZetaChain network, we take a different approach in [this section]. Functional Call Maps allow a security researcher to take a deeper dive into the code structure of critical functions and visualize how they interact with each other. The functional call maps also further assist researchers in identification of attack surfaces, dependency analysis and spotting unintended functionality. We will provide functional call maps for components within the CCTX lifecycle, permissionless tx validation model and within the permissions and admin group functional area.
