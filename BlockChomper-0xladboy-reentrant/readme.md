# Phase 2 Readme

# ZetaLotus Alpha Repo, Phase 2

![Untitled](Phase%202%20Readme%20a21b31611b314c5c9446c5d690c20f46/Untitled.png)

## Threat Modelling

In the [Threat Modelling] section we provide a structured approach for security researchers to identify and document potential threats to the ZetaChain network and outline the harm that could be caused from the perspective of the attacker.  Our goal is to provide a strategic overview of the potential risks to the project and enable researchers to visualize attack vectors, helping to refine their testing strategy. The ZetaLotus team took the approach of providing both high level attack trees, covering attacker goals of consensus manipulation, denial of service, freezing and stealing funds. We then deep dive into more granular attack trees targeting the custom ZetaChain modules, analyzing methods to disrupt the crosschain, emission, fungible and observer modules. We then further outline key invariants, which are properties that must always hold true for the ZetaChain system to function securely. Lastly, we even provide a guide for researchers to compose further custom attack trees specific to their end goal and demonstrate how AI can be used to assist researchers in attacking!

## Architectural Diagrams

## Functional Call Map

While in [Architectural Diagrams] we provided a high-level overview of the architecture and important areas of the ZetaChain network, we take a different approach in [this section]. Functional Call Maps allow a security researcher to take a deeper dive into the code structure of critical functions and visualize how they interact with each other. The functional call maps also further assist researchers in identification of attack surfaces, dependency analysis and spotting unintended functionality. We will provide functional call maps for components within the CCTX lifecycle, permissionless tx validation model and within the permissions and admin group functional area.