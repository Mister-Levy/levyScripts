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
font = reaper.ImGui_CreateFont( "C:\\Users\\damia\\Dropbox\\Reaper\\Scripts\\levyScripts\\Theme Editing\\Fonts\\Roboto\\Roboto-Regular.ttf", 14 )
reaper.ImGui_AttachFont( ctx, font )
--reaper.ImGui_PushFont(ctx, font)

create_theme_list_table()
read_rtconfig_values_to_table(string.match(r.GetLastColorThemeFile(), file_from_path))

--------------------------------------------------
--	Build Tables
--------------------------------------------------

panels_table = {}
elements_table = {}
layouts_table = {}
selected_elements_table = {}
sort_table = {}
color_attributes_function_table = {}

for panel in pairs(main_table) do
  panels_table[#panels_table + 1] = panel
  elements_table[panel] = {}
  for element in pairs(main_table[panel]) do
    elements_table[panel][#elements_table[panel] + 1] = element
  end
  table.sort(elements_table[panel])
end
table.sort(panels_table)

--------------------------------------------------
--	Combo List Strings
--------------------------------------------------

combo_list_panels = ""
combo_list_elements = {}
combo_list_layouts = "Default\31"

for panel = 1, #panels_table do
  combo_list_panels = combo_list_panels .. panels_table[panel] .. '\31'
  combo_list_elements[panels_table[panel]] = ""
  for element = 1, #elements_table[panels_table[panel]] do
    combo_list_elements[panels_table[panel]] = combo_list_elements[panels_table[panel]] .. elements_table[panels_table[panel]][element] .. '\31'
  end
end