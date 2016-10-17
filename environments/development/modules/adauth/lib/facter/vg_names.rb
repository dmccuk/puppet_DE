Facter.add("vg_names") do
  setcode "vgdisplay | grep  \"VG Name\" | awk '{print $3}'| paste -s -d \",\""
end
