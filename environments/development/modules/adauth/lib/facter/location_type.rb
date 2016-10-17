Facter.add("location_type") do
  setcode do
    Facter.value(:hostname)[7..7]
  end
end

