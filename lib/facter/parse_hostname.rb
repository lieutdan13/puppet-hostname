require 'facter'

Facter.add(:pretty_hostname) do
  setcode do
    host = /(.*)(\.\w{2,}\.\w{2,3})$/.match(%x{hostname --fqdn})[1]
    pretty_hostname = host.split(/(\W)/).map(&:capitalize).join
  end
end
