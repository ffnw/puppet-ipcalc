require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_broadcast, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    offset = ((args[1] || '0').to_i)
    raise ArgumentError, 'offset out of bounds' if offset < 0 || offset >= ip.size
    ip[ip.size-1-offset].ip + '/' + ip.bits
  end
end
