Facter.add("business_identifier_type") do
  setcode do
    Facter.value(:hostname)[3..5]
  end
end

