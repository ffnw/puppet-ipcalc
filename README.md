# puppet-ipcalc

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with ipcalc](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ipcalc](#beginning-with-ipcalc)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Development - Guide for contributing to the module](#development)
1. [Thanks](#thanks)

## Description

This module provides puppet parser functions for performing IP address calculations in manifests.

## Setup

### Setup Requirements

```sh
puppetserver gem install netaddr
```

### Beginning with ipcalc

Just install the gem and the module and start usingthe functions.

## Usage

### `ip_address($cidr)`

ip_address takes an IP/CIDR and returns just the IP address.

### `ip_prefixlength($cidr)`

ip_prefixlength takes an IP/CIDR and returns just the prefix length.

### `ip_netmask($cidr)`

ip_netmask takes an IP/CIDR and returns the netmask which corresponds to its
prefix length.

### `ip_network($cidr, $offset)`

ip_network takes two arguments. The first is an IP/CIDR which is required. The
second is an optional numerical offset which defaults to 0. The function
returns an IP/CIDR by computing the network address of the subnet containing
the supplied IP/CIDR and incrementing it by the offset. Given no offset, the
function returns the network address for the subnet containing the supplied
IP/CIDR. The maximum reasonable value for offset is one less than the size of
the subnet containing the supplied IP/CIDR but the function will probably
accept larger values.

### `ip_broadcast($cidr, $offset)`

ip_broadcast takes two arguments. The first is an IP/CIDR which is required.
The second is an optional numerical offset which defaults to 0. The function
returns an IP/CIDR by computing the broadcast address of the subnet containing
the supplied IP/CIDR and decrementing it by the offset. Given no offset, the
function returns the broadcast address for the subnet containing the supplied
IP/CIDR. The maximum reasonable value for offset is one less than the size of
the subnet containing the supplied IP/CIDR but the function will probably
accept large values.

### `ip_network_size($cidr)`

ip_network_size takes an IP/CIDR and returns the number of IP addresses
(including network and broadcast addresses) in the IP/CIDR's subnet.

### `ip_offset($cidr)`

ip_offset takes an IP/CIDR and returns its numerical offset. The offset is the
IP/CIDR's numerical distance from the beginning of its subnet at the network
address.

### `ip_split($cidr)`

ip_split takes an IP/CIDR and return an array containing the IP/CIDRs of the
top and bottom halves.

### `ip_subnet($cidr, $subnet_prefixlength, $index)`

ip_subnet returns a subnet of the given IP/CIDR. The subnet will have
`subnet_prefixlength` as its prefix length, and will be the `$index`th
such subnet in the given IP/CIDR

### `ip_supernet($cidr, $supernet_prefixlength)`

ip_supernet returns the IP/CIDR of size `$supernet_prefixlength` which contains
`$cidr`

## Development

### How to contribute
Fork the project, work on it and submit pull requests, please.

## Thanks
Used inkblot-ipcalc as a template. Thanks for that!

