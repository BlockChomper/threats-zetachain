# Functional Call Maps

# ZetaChain Functional Call Maps and Security Considerations

![Untitled](Functional%20Call%20Maps%203993cc24b75e45daabbfb43cd0c10307/Untitled.png)

## Introduction

While in [Architectural Diagrams] we provided a high-level overview of the architecture and important areas of the ZetaChain network, we take a different approach in this section. Functional Call Maps allow a security researcher to take a deeper dive into the code structure of critical functions and visualize how they interact with each other. The functional call maps also further assist researchers in identification of attack surfaces, dependency analysis and spotting unintended functionality. We will provide functional call maps for components within the CCTX lifecycle as from the ZetaLotus teams perspective, is the most crucial component that should be tested to ensure secure and operational effectiveness of the ZetaChain protocol.

## Cross-Chain Transactions

> ⚠️ **************************************************How to read this diagram:**************************************************

This is a functional call map diagram. It’s intent is to show the major calls between modules, their keepers, and the ABCI handlers for `zetaclient` and `zetacore`.  

Connecting arrows show the *execution flow* of the Cross-Chain Transactions system, rather than the nested call graph.

Only critical conditional paths are shown.

Each function call on the map includes:
1. The file it is located in
2. The line number in the file of the actual call
3. The struct it is attached to
4. The name of the function call
> 

![out.svg](Functional%20Call%20Maps%203993cc24b75e45daabbfb43cd0c10307/out.svg)

## Function Call Maps for Security Researchers

Usage of the functional call map will provide security researchers will crucial assistance to understand wide spanning and complex code that the ZetaChain is comprised of. It further refines researchers ability to understand the attack surface and focus their testing strategies. 

The key elements that must be taken into consideration when using the Function Call Map provided above addressing the Full Node (ZetaClient and ZetaCore) are:

- Delineation of the main areas of functionality through the domains outlined in the diagram
- Usage of this map in combination with the high level architectural diagram provided in [Architectural Diagrams]
- Usage of this map to challenge expectations: Does the execution flow match your expectations in comparison to the code?

It should be noted that ZetaChain is over 100K SLOC, it is crucial for researchers to focus on important areas of potential vulnerability while determining their testing strategies. ZetaChain’s core architectural components are composed of ZetaCore and ZetaClient. Using the function call map and focusing on these areas will allow a researcher to obtain a higher level of understanding, necessary to craft successful attacks on the codebase. 

About this diagram:

To keep with the tenets of maintainability, collaboration, and scalability, we’ve chosen to use Mermaid for the purpose of this functional call map.  In the same vein, there are material drawbacks to the experience of working with large-scale functional call maps. 

**Tooling**
The online tooling is very convenient for smaller diagrams that may comprise a few dozen nodes and connections.  Beyond that, there is a lack of tooling through the browser to support much larger diagrams that are a natural outcome of sprawling codebases such as ZetaChain.  It was the experience of the author that the two major live-coding applications (mermaid.live and mermaid.chart) refused to work after a point, and not because of a lack of computing power. Inspecting the applications through the browser developer tools, it was quickly discovered that one ran out of memory in attempts to render the large diagram, while the other’s server-based rendering would consistently fail to return anything at all.

To solve the issue, it became necessary to install the command-line utility `mmdc` and run it manually in between updates to the diagram’s code.  While there were material no memory or performance hits beyond a diagnostic message apologizing for the rendering time, the experience left a lot to be desired.

### Colophon

Building this diagram took near 25 hours to research alone.  Building it was another 18 hours of tweaking, arranging, and general editing.  It was the goal of the author to ensure that any intrepid users could make sense of the many overlapping elements of the codebase.  To that end, many groupings and connections were created to help the user have the best chance at getting quickly up to speed.

**Tips**

1. Use the command-line tool `mmdc` to render your diagrams.
2. After a hundred nodes or so, having a solid naming convention helps.  Using a system like CSS-naming conventions will help with placing, identifying, and linking nodes
3. There are a myriad options to colorize the diagrams, but nearly zero for consistently affecting layout.  Be judicious with arrow lengths to nudge your diagrams where it would help for readability.