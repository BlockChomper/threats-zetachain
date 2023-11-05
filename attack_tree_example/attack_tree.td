__Goal: Exploit the misconfiguration of ETH swap limits in Canto's code__

- Conduct swaps that utilize the incorrect ETH limit
  + Access the Canto protocol with ETH to perform a swap
  + Swap an amount of ETH greater than 0.01 but less than or equal to 0.1
    - [ ] Correcting the code to reflect the intended 0.01 ETH limit would block this
  + Operate under the assumption the `GetMaximumSwapAmount` function will not flag the discrepancy
    -? There could be additional checks outside this function that may identify the incorrect swap limit
       > If such checks are in place, they could alert to the misuse despite the function's misconfiguration.
  + Assumption: Users and risk management processes are relying on the documentation and not the actual code
    - [ ] Educating users and updating risk management processes to verify against actual code limits can mitigate this
       > Regular updates to documentation and user notifications about actual limits could reduce the risk of exploitation.
  + Assumption: No immediate code audits are scheduled that would catch the discrepancy
    -? Continuous integration and delivery (CI/CD) pipelines may include code audits that could detect the misconfiguration
       > Implementing or enhancing CI/CD processes could prevent the exploitation by catching such errors early.