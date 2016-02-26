require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_address, :type => :rvalue) do |args|
    NetAddr::CIDR.create(args[0]).ip
  end
end

