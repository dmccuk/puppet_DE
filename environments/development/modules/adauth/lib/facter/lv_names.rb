Facter.add("lv_names") do
#  setcode "lvdisplay | grep  \"LV Name\" | awk '{print $3}' | tr '\\n' ','"
  setcode "lvdisplay | grep  \"LV Name\" | awk '{print $3}'| paste -s -d \",\""
end
