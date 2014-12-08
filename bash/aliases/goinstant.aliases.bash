#!/bin/bash

## GoInstant aliases
if [ -e ~/repos/platform/.aliases ]; then
  source ~/repos/platform/.aliases
fi
alias registry='bastion ssh -A -t registry."$VPC_EAST_HOSTNAME"'
alias stage='enviro="stg"'
alias prod='enviro="prod"'
alias vagrant-home='cd ~/vagrant'

## Old DevOps type stuff
alias flushdns="sudo killall -HUP mDNSResponder"
alias starthaproxy="sudo launchctl start org.haproxy"
alias stophaproxy="sudo launchctl stop org.haproxy"
alias clrpyc="find . | grep \.[^\.].pyc$ | xargs rm -ivf"
