--[[
  about       :
  description :
  donation    :
  link        :
  noindex     : true
  screenshot  :
  version     : 0.1
  author      : Mister Levy
  changelog   :
  metapackage :
  provides    :
]]--

ctx = reaper.ImGui_CreateContext(script_name)
create_theme_list_table()
read_rtconfig_values_to_table(string.match(r.GetLastColorThemeFile(), file_from_path))

panels_table = {}
elements_table = {}
for panel in pairs(main_table) do
  panels_table[#panels_table + 1] = panel
  elements_table[panel] = {}
  for element in pairs(main_table[panel]) do
    elements_table[panel][#elements_table[panel] + 1] = element
  end
  table.sort(elements_table[panel])
end
table.sort(panels_table)

combo_list_panels = ""
combo_list_elements = {}
for panel = 1, #panels_table do
  combo_list_panels = combo_list_panels .. panels_table[panel] .. '\31'
  combo_list_elements[panels_table[panel]] = ""
  for element = 1, #elements_table[panels_table[panel]] do
    combo_list_elements[panels_table[panel]] = combo_list_elements[panels_table[panel]] .. elements_table[panels_table[panel]][element] .. '\31'
  end
end