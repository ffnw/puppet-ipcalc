require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_offset, :type => :rvalue) do |args|
    ip = NetAddr::CIDR.create(args[0])
    ip.to_i(:ip) - NetAddr::CIDR.create(ip.network).to_i(:ip)
  end
end
