require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_broadcast, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    raise ArgumentError, 'offset out of bounds' if args[1] < 0 || args[1] >= ip.size
    ip[ip.size-1-((args[1] || '0').to_i)]
  end
end
