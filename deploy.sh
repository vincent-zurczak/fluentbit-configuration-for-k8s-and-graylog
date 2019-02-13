#!/bin/sh

# (Found at https://github.com/fluent/fluent-bit-kubernetes-logging and updated)
# Create the namespace
kubectl create namespace logging

# Create the base resources
kubectl create -f fluent-bit-service-account.yaml
kubectl create -f fluent-bit-role.yaml
kubectl create -f fluent-bit-role-binding.yaml

# Create the config map
# See https://github.com/fluent/fluent-bit/issues/851 for the GELF parameters.
kubectl create -f fluent-bit-configmap.yaml

# Create the daemon set
kubectl create -f fluent-bit-daemon-set.yaml

