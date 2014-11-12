#!/bin/bash

# Update CentOS with any patches
zypper addlock kernel*
zypper --non-interactive update 

# Tools
zypper --non-interactive remove patterns-openSUSE-minimal_base-conflicts-12.3-7.10.1.x86_64
zypper --non-interactive install nano git unzip screen telnet smtp_daemon

zypper removelock kernel*
