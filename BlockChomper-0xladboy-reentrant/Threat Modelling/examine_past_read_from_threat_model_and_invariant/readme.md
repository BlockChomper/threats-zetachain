# Past C4 Contest for a Cosmos SDK Project (Canto)

https://code4rena.com/reports/2023-06-canto

# High Severity Finding

https://code4rena.com/reports/2023-06-canto#h-01-pre-defined-limit-is-different-from-the-spec

The pre-defined limit differs from the specification.

The broken invariant is that the swap should not exceed the limit defined by the specification, 

yet the incorrectly hardcoded value allowed users' swaps to exceed the limit by a factor of 10.

If the auditor defines the attack tree's root and goal as bypassing the swap limit and exploiting the misconfiguration, 

then by defining the impact of such a misconfiguration, they can find the issue.

# Medium Severity Finding: Potential risk of using swappedAmount in case of swap error 

https://github.com/code-423n4/2023-06-canto-findings/issues/71

The invariant broken by the issue is that the swappedAmount should not be used for further calculations if the swap operation fails. 

Instead, it should be zeroed out to prevent incorrect execution of subsequent operations. 

An auditor aiming to identify this finding should define the goal as ensuring that error handling does not allow for erroneous state transitions, specifically that no incorrect values are carried over after a failed operation. 

This goal would direct the auditor to scrutinize error handling paths and the state of variables post-failure, leading to the discovery of the vulnerability.
