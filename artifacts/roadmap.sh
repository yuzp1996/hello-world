#!/usr/bin/env bash

# Install jenkins
helm install stable/jenkins

# Config the jenkins host: append the line below to /etc/hosts
127.0.0.1   myjenkins.com

# Get your 'admin' user password by running:
printf $(kubectl get secret --namespace default singing-donkey-jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo

# Update the 'apitoken' and 'username' in secret-jenkins.yaml.
echo "username" | base64
echo "passwd" | base64

# Kubectl apply ...
kubectl apply -f jenkins.yaml
kubectl apply -f secret-jenkins.yaml
kubectl apply -f jenkinsbinding.yaml
kubectl apply -f secret-git.yaml
kubectl apply -f secret-registry.yaml
