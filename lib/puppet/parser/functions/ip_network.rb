require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_network, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    offset = ((args[1] || '0').to_i)
    raise ArgumentError, 'offset out of bounds' if offset < 0 || offset >= ip.size
    ip[offset].ip + '/' + ip.bits
  end
end
