Facter.add("datacentre") do
  setcode do
    datacentre = "unknown"
    ip = Facter.value(:ipaddress_eth1)
    if ip.match("^192.168.100.")
         datacentre = "JH"
    elsif ip.match("^192.168.101.")
         datacentre = "WK"
    end
    datacentre
    end
end
