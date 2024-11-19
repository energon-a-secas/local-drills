
## Request

Currently there is a new zone called `eph.ehq.cloud` that must be delegated, add the configuration either to the CFN template or by command.

## Verification

```bash
aws route53 list-hosted-zones
dig @127.0.0.1 eph.ehq.cloud NS # to test
```

## Solution

