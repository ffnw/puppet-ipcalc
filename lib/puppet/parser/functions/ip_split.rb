require 'netaddr'

module Puppet::Parser::Functions
  newfunction(:ip_split, :type => :rvalue) do |args|
    NetAddr::CIDR.create(args[0]).subnet
  end
end
