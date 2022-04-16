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

r.ImGui_SetNextItemWidth(ctx, 100) -- 100
rv_panel_select, current_panel     = r.ImGui_Combo(ctx, "##select_panel", current_panel, combo_list_panels, 20) ; r.ImGui_SameLine(ctx)
r.ImGui_SetNextItemWidth(ctx, 150)
rv_element_select, selected_elements_table[current_panel] = r.ImGui_Combo(ctx, "##select_element", selected_elements_table[current_panel], combo_list_elements[panels_table[current_panel + 1]], 20)