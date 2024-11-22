# Route 53 Missing Zone Delegation

## Problem

You've been tasked with managing DNS for a new subdomain `eph.ehq.cloud`. The hosted zone has been created, but DNS resolution is failing. When attempting to resolve the NS records, you receive no response:

    dig @127.0.0.1 eph.ehq.cloud NS

### Context
- A Route 53 hosted zone for `eph.ehq.cloud` exists
- The parent domain `ehq.cloud` is managed in a separate Route 53 hosted zone
- You're testing in a LocalStack environment
- You have full access to both hosted zones

### Given Resources
- Parent zone: `ehq.cloud`
- Child zone: `eph.ehq.cloud`
- Both zones are in Route 53

### Task
1. Identify why DNS resolution is failing
2. Configure the proper delegation from parent to child zone
3. Verify the DNS resolution works correctly

### Validation
Your solution should:
- Show NS records when querying the subdomain
- Allow proper DNS resolution of the subdomain
- Maintain proper DNS hierarchy

### Hint
Check if the parent zone has the necessary NS records pointing to the child zone's name servers.

## Solution

[Solution](../solutions/r53-01-missing-delegation.md)

## Additional Resources
- [Route 53 Configuring DNS Delegation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/CreatingNewSubdomain.html)
- [DNS Delegation Documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-routing-traffic-for-subdomains.html)
