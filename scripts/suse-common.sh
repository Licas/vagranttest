#!/bin/bash

# Update CentOS with any patches
zypper addlock kernel*
zypper --non-interactive update 

# Tools
zypper --non-interactive install nano git unzip screen nc telnet

zypper removelock kernel*
