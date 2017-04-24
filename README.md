# POV Use Case for Icinga Server and Client management with Puppet Enterprise

## Overview

This profile will set up an Icinga server that will be able to receive newly deployed nodes and begin managing them on demand. This includes two components. Icinga Server that is set to be run on Centos 7.2 and classes for Windows and Linux agents that will monitor server health. (Agent classes have not been fully created quite yet)

## Installation

Use code manager to install this module by adding the following entry to your Puppetfile.

```
mod 'profile_icinga',
  :git => 'https://github.com/velocity303/pov-usecase-icinga.git'
```

## Modules Required

There are several modules required for this particular use case to function properly. Please add the following to your Puppetfile.

```
mod 'puppetlabs/stdlib', '4.13.1'
mod 'puppetlabs/apache', '1.11.0'
mod 'puppetlabs/mysql', '3.10.0'
mod 'puppet/download_file', '2.1.0'
mod 'icinga/icinga2', '1.2.1'
mod 'stahnma/epel', '1.2.2'
mod 'puppetlabs/firewall', '1.8.1'
mod 'icingaweb2',
  :git => 'https://github.com/Icinga/puppet-icingaweb2.git'

```

## Important variables

If looking to override the defaults provided by this profile, please use the following inserted into your hiera configuration.

```
---
(To Be Added)
```

## Operating systems validated

This has currently been validated against CentOS/RedHat 7.2
