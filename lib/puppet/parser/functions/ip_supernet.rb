require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_supernet, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    raise ArgumentError, 'supernet prefix too short' if args[1] < ip.bits
    ip.resize(args[1]).to_s
  end
end
