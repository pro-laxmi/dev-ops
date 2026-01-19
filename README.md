# DevOps Learning Project

## Overview
Creating and implementing a simple CI/CD pipeline with Docker and Kubernetes.

## Project Structure

### Main Folders
- **docker_course/**: Docker basics and testing
- **kubernetes-demo/**: Kubernetes deployment with Express.js API
- **react_docker/**: React application containerization
- **vite-docker/**: Vite + React application with Docker

## What We've Done So Far

### 1. Fixed ES Module Issue in Kubernetes Demo
**Problem**: Node.js was throwing a `SyntaxError: Cannot use import statement outside a module` error when trying to run the Express.js application in the Kubernetes pod.

**Solution**: Added `"type": "module"` to the `kubernetes-demo/package.json` file to enable ES6 module syntax (import/export statements).

### 2. Rebuilt and Redeployed Docker Image
- Updated the Docker image with the fixed package.json
- Rebuilt the container image using Docker
- Applied the changes to the Kubernetes cluster using `kubectl rollout restart`
- Successfully deployed the new pods to replace the broken ones

### 3. Verified Kubernetes Deployment
- Confirmed that the new pods are running successfully (1/1 Running status)
- Verified the application is listening on port 3000
- Old failing pods were properly terminated and cleaned up

## Key Learnings
- ES6 modules require explicit configuration in Node.js (`"type": "module"` in package.json)
- Container images must be rebuilt and redeployed when code/configuration changes
- Kubernetes automatically manages pod lifecycle and rolling updates

## Next Steps
- Test the API endpoints through the Kubernetes service
- Implement additional CI/CD pipeline automation
- Explore multi-container deployments with docker-compose