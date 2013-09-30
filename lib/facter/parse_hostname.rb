require 'facter'

Facter.add(:pretty_hostname) do
  setcode do
    pretty_hostname = %x{hostname} 
  end
end
