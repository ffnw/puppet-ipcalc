require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_netmask, :type => :rvalue) do |args|
    NetAddr::CIDR.create(args[0]).wildcard_mask
  end
end
