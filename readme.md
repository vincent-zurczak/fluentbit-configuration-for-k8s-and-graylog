# Fluent Bit Configuration for K8s and Graylog

A K8s configuration to install and configure Fluent Bit as a daemon set.  
Fluent Bit collects only Docker logs, gets K8s metadata, builds a GEF message
and sends it to a Graylog server.

* Update the **fluent-bit-configmap.yaml** file.
  Replace **192.168.1.18** with the IP address of your Graylog server.
* Then execute the **deploy.sh** script.

