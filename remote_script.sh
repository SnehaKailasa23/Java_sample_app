#!/bin/bash

scp ubuntu@13.230.131.198:/var/lib/jenkins/workspace/${JOB_NAME}/SpringMVCSecurityXML/target/SpringMVCSecurityXML.war jboss_domain/standalone/deployments/
