require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_subnet, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    offset = NetAddr::CIDR.create('0.0.0.0/' + args[1]).size * args[2]

    raise ArgumentError, 'subnet prefix too long' if args[1] <= ip.bits
    raise ArgumentError, 'subnet index out of bounds' if offset >= ip.size

    ip[offset].ip + '/' + args[1]
  end
end
