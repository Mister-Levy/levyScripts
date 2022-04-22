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

column1 = 85
column2 = column1 + 60
column3 = column2 + 60
column4 = column3 + 40
column5 = column4 + 50
column6 = column5 + 60
column7 = column6 + 60
column8 = column7 + 60

btn_size = 65

----------------------------------------------------------------------------------------------------
--	MAIN COMBOS
----------------------------------------------------------------------------------------------------
spacing(3)
r.ImGui_Text(ctx, 'Layout:') ; r.ImGui_SameLine(ctx, 60)
r.ImGui_SetNextItemWidth(ctx, 206)
rv_panel_se, current_pan  = r.ImGui_Combo(ctx, "##select_pane", current_pan, combo_list_layouts .. 'new\31', 20) ; r.ImGui_SameLine(ctx)
----------------------------------------------------------------------------------------------------
if not current_panel then current_panel = 4 end
r.ImGui_SetNextItemWidth(ctx, 100)
rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_panel", current_panel, combo_list_panels, 20) ; r.ImGui_SameLine(ctx)
if not selected_elements_table[current_panel] then selected_elements_table[current_panel] = 0 end
r.ImGui_SetNextItemWidth(ctx, 150)
rv_element_select, selected_elements_table[current_panel] = r.ImGui_Combo(ctx, "##select_element", selected_elements_table[current_panel], combo_list_elements[panels_table[current_panel + 1]], 20)
spacing(2)
----------------------------------------------------------------------------------------------------
--	GET MAIN TABLE DATA
----------------------------------------------------------------------------------------------------
pnl = panels_table[current_panel + 1]
elm = elements_table[panels_table[current_panel + 1]][selected_elements_table[current_panel] + 1]
element_data = main_table[pnl][elm]
element_description = element_data.desc
----------------------------------------------------------------------------------------------------
--	WIDGETS
----------------------------------------------------------------------------------------------------
r.ImGui_PushTextWrapPos(ctx, window_width - 10)
r.ImGui_TextColored(ctx, 0x555555FF, element_description)
r.ImGui_PopTextWrapPos(ctx)
spacing(3)
----------------------------------------------------------------------------------------------------
r.ImGui_Text(ctx, 'Scene :') ; r.ImGui_SameLine(ctx, column4)
----------------------------------------------------------------------------------------------------
r.ImGui_Text(ctx, 'State:') ; r.ImGui_SameLine(ctx, column2)
  spacing(2) ; r.ImGui_Separator(ctx) ; spacing(2)
----------------------------------------------------------------------------------------------------
r.ImGui_Text(ctx, 'Position:') ; r.ImGui_SameLine(ctx, column1)
  r.ImGui_SetNextItemWidth(ctx, 40)
  rv, xp = r.ImGui_DragInt(ctx, 'X', xp, .1, -9999, 9999) ; r.ImGui_SameLine(ctx, column1 + 60)
  r.ImGui_SetNextItemWidth(ctx, 40)
  rv, yp = r.ImGui_DragInt(ctx, 'Y', yp, .1, -9999, 9999) ; r.ImGui_SameLine(ctx, column4)
----------------------------------------------------------------------------------------------------
r.ImGui_Text(ctx, 'Size:') ; r.ImGui_SameLine(ctx , column5)
  r.ImGui_SetNextItemWidth(ctx, 40)
  rv, ws = r.ImGui_DragInt(ctx, 'W', ws, .1, -9999, 9999) ; r.ImGui_SameLine(ctx, column5 + 60)
  r.ImGui_SetNextItemWidth(ctx, 40)
  rv, hs = r.ImGui_DragInt(ctx, 'H', hs, .1, -9999, 9999) ; r.ImGui_SameLine(ctx, column5 + 130)
  rv_size, link_size = r.ImGui_Checkbox(ctx, 'Link##size', link_size)
  spacing(2) ; r.ImGui_Separator(ctx) ; spacing(2)
----------------------------------------------------------------------------------------------------
r.ImGui_Text(ctx, 'Alignment:') ; r.ImGui_SameLine(ctx, column1)
  r.ImGui_SetNextItemWidth(ctx, 60)
  rv, la, ra = r.ImGui_DragInt2(ctx, 'L&R', la, ra, .1, 0, column2) ; r.ImGui_SameLine(ctx, column1 + 100)
  rv_alignment_x, link_alignment_x = r.ImGui_Checkbox(ctx, 'Link##alignment_x', link_alignment_x) ; r.ImGui_SameLine(ctx, column5)
  r.ImGui_SetNextItemWidth(ctx, 60)
  rv, ta, ba = r.ImGui_DragInt2(ctx, 'T&B', ta, ba, .1, 0, column2) ; r.ImGui_SameLine(ctx) ; r.ImGui_SameLine(ctx, column5 + 100)
  rv_alignment_y, link_alignment_y = r.ImGui_Checkbox(ctx, 'Link##alignment_y', link_alignment_y)
  spacing(2) ; r.ImGui_Separator(ctx) ; spacing(2)
----------------------------------------------------------------------------------------------------
--	OPTIONAL ATTRIBUTE WIDGETS
----------------------------------------------------------------------------------------------------
for k in pairs(element_data.attributes) do
  ----------------------------------------------------------------------------------------------------
  if k:match('^%[(%w+)%]') == 'font' then
    font_attribute = true
    font_function = function()
      r.ImGui_Text(ctx, 'Font:') ; r.ImGui_SameLine(ctx)
      r.ImGui_SetNextItemWidth(ctx, 180)
      rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_pane", current_panel, combo_list_layouts, 20) ; r.ImGui_SameLine(ctx, column4)
    end
  end
  ----------------------------------------------------------------------------------------------------
  if k:match('^%[(%w+)%]') == 'color' then
    color_attribute = true
    sort_table[#sort_table + 1] = k:match('^%[%w+%]' .. pnl .. '%.' .. elm .. '%.(.+)$')
    color_attributes_function_table[(k:match('^%[%w+%]' .. pnl .. '%.' .. elm .. '%.(.+)$'))] = function(space, i)
      r.ImGui_Text(ctx, ((k:match('^%[%w+%]' .. pnl .. '%.' .. elm .. '%.(.+)$')):gsub('%.', ' ')):gsub("(%a)([%w_']*)", title_case) .. ':')
      if elm ~= 'meter' then
        r.ImGui_SameLine(ctx)
        r.ImGui_SetNextItemWidth(ctx, 100)
        rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_pane", current_panel, combo_list_layouts, 20)
        r.ImGui_SameLine(ctx)
        r.ImGui_SameLine(ctx)
        r.ImGui_SetNextItemWidth(ctx, 100)
        rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_pane", current_panel, combo_list_layouts, 20)
        r.ImGui_SameLine(ctx)
      else
        r.ImGui_SameLine(ctx,space)
        r.ImGui_SetNextItemWidth(ctx, 120)
        rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_pane", current_panel, combo_list_layouts, 20)
        if i == 2 or i == 3 or i == 5 or i == 6 or i == 7 or i == 8 then
          r.ImGui_SameLine(ctx)
          r.ImGui_SetNextItemWidth(ctx, 120)
          rv_panel_select, current_panel  = r.ImGui_Combo(ctx, "##select_pane", current_panel, combo_list_layouts, 20)
        end
      end
    end
  end
  ----------------------------------------------------------------------------------------------------
  if k:match('^%[(%w+)%]') == 'margin' then
    margin_attribute = true
    margin_function = function()
      r.ImGui_Text(ctx, 'Margin:') ; r.ImGui_SameLine(ctx)
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp = r.ImGui_InputInt(ctx, 'L  ', xp, 1, 100, 100) ; r.ImGui_SameLine(ctx)
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp = r.ImGui_InputInt(ctx, 'R          ', xp, 1, 100, 100) ; r.ImGui_SameLine(ctx)

      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp = r.ImGui_InputInt(ctx, 'T  ', xp, 1, 100, 100) ; r.ImGui_SameLine(ctx)
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp = r.ImGui_InputInt(ctx, 'B         ', xp, 1, 100, 100) ; r.ImGui_SameLine(ctx)

      local alignment_options = {'Left', 'Center', 'Right'}
      local current_alignment = alignment_options[xp2]
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp2 = r.ImGui_SliderInt(ctx, 'A', xp2, 1, #alignment_options, current_alignment)
    end
  end
  ----------------------------------------------------------------------------------------------------
  if k:match('^%[(%w+)%]') == 'div' then
    div_attribute = true
    div_function = function()
      
      r.ImGui_Text(ctx, '    Div:') ; r.ImGui_SameLine(ctx)
      r.ImGui_BeginGroup(ctx)
      local alignment_options = {'Uneven', 'Even', 'Default', 'Center'}
      local current_alignment = alignment_options[xp2]
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp = r.ImGui_InputInt(ctx, 'L  ', xp, 1, 100, 100) ; spacing(2)
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp2 = r.ImGui_SliderInt(ctx, '##A', xp2, 1, #alignment_options, current_alignment)
      r.ImGui_EndGroup(ctx)
    end
  end
  ----------------------------------------------------------------------------------------------------
  if k:match('^%[(%w+)%]') == 'fadermode' then
    fadermode_attribute = true
    fadermode_function = function() 
      r.ImGui_SameLine(ctx)
      r.ImGui_Text(ctx, '   Fadermode:') ; r.ImGui_SameLine(ctx)
      local alignment_options = {'Auto', 'Knob', 'Fader'}
      local current_alignment = alignment_options[xp2]
      r.ImGui_SetNextItemWidth(ctx, btn_size)
      rv, xp2 = r.ImGui_SliderInt(ctx, '##A', xp2, 1, #alignment_options, current_alignment)
    end
  end
end

if font_attribute then font_function() font_attribute = nil end
if color_attribute then
  table.sort(sort_table)
  r.ImGui_BeginGroup(ctx)
  local space = 140
  for i = 1, #sort_table do
    color_attributes_function_table[sort_table[i]](space, i)
  end
  r.ImGui_EndGroup(ctx)
  r.ImGui_SameLine(ctx)
  sort_table = {}
  if div_attribute then div_function() div_attribute = nil end
end
if margin_attribute then 
  spacing(2)
  r.ImGui_Separator(ctx)
  spacing(2)
  margin_function() margin_attribute = nil 
end
if fadermode_attribute then fadermode_function() fadermode_attribute = nil end



