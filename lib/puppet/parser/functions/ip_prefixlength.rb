require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_prefixlength, :type => :rvalue) do |args|
    NetAddr::CIDR.create(args[0]).bits
  end
end
