# Solution for Incorrect Port Configuration

## Common Mistakes
- **Misconfigured Liveness Probe Port**: The liveness probe may be configured to check the wrong port, leading to repeated health check failures. Often, the port specified in the liveness probe does not match the `containerPort` where the application is actually listening.
- **Port Mismatch in Deployment and Service Definitions**: There can also be a mismatch between the `containerPort` in the deployment and the `targetPort` in the service definition, which complicates the routing of traffic and effective health monitoring.

## Solution
To resolve this issue, ensure that the liveness probe in your deployment configuration is set to the correct port. Here's an example configuration that corrects the port in both the deployment and the associated service:

### Deployment Configuration with Corrected Liveness Probe
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-application
spec:
  replicas: 1
  selector:
    matchLabels:
      app: my-application
  template:
    metadata:
      labels:
        app: my-application
    spec:
      containers:
      - name: my-app-container
        image: my-app-image
        ports:
        - containerPort: 80  # Ensure this is the port your application listens on
        livenessProbe:
          httpGet:
            path: /health
            port: 80  # Correct port for the liveness probe
          initialDelaySeconds: 10
          periodSeconds: 5

```

### Service Configuration

```yaml
apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  type: NodePort
  selector:
    app: my-application
  ports:
  - port: 8080        # The external port exposed by the service
    targetPort: 80    # Should match the containerPort from the deployment
    nodePort: 30000   # Optionally specify a nodePort for external access
```

## Additional Resources

- Kubernetes Liveness Probes
- Kubernetes Services Documentation