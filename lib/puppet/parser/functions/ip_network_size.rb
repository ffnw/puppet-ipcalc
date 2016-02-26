require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_network_size, :type => :rvalue) do |args|
    NetAddr::CIDR.create(args[0]).size
  end
end
