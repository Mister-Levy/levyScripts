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

function menu_new_theme()

  if rv_modal_text_entry then
    response, new_theme_name = modal_text_entry(ctx, "##new_theme", "Please enter a name for your new theme", new_theme_name)
    if response then
      rv_modal_text_entry = nil
      if response == 1 then
        if not create_new_theme(new_theme_name) then
          rv_modal_dialog_message = true
        end
      end
    end
  end

  if rv_modal_dialog_message then
    response = modal_dialog_message(ctx, 'SORRY', 'A theme with the name "' .. new_theme_name .. '" already exists.\n\nPlease choose a new name for your theme')
    if response then rv_modal_dialog_message = nil rv_modal_text_entry = true end
  end

end

function menu_delete_theme(theme)
  if theme_to_delete then
    response = modal_confirmation(ctx, "WARNING!", 'Are you sure you want to permanently delete this theme?')
    if response then
      theme_to_delete = false
      if response == 1 then
        delete_theme(theme)
        create_theme_list_table()
      end
    end
  end
end

function open_theme(theme_to_open)
end

if r.ImGui_BeginMenuBar(ctx) then
  if r.ImGui_BeginMenu(ctx, menu_bar_name) then

    rv_modal_text_entry = r.ImGui_MenuItem(ctx, 'New Theme')

    if r.ImGui_BeginMenu(ctx , 'Duplicate') then
      for i = 0 , #theme_list_table['unzipped'] do
        if i == 0 then
          if r.ImGui_MenuItem(ctx, string.match(r.GetLastColorThemeFile(), file_from_path)) then
            theme_to_delete = string.match(r.GetLastColorThemeFile(), file_from_path)
          end
          r.ImGui_Separator(ctx)
        else
          if r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then
            theme_to_delete = theme_list_table['unzipped'][i]
          end
        end
      end
      r.ImGui_EndMenu(ctx)
    end

    if r.ImGui_BeginMenu(ctx , 'Open') then
      for i = 0 , #theme_list_table['unzipped'] do
        if i == 0 then
          if r.ImGui_MenuItem(ctx, string.match(r.GetLastColorThemeFile(), file_from_path)) then
            theme_to_open = string.match(r.GetLastColorThemeFile(), file_from_path)
          end
          r.ImGui_Separator(ctx)
          r.ImGui_TextDisabled(ctx, 'UNZIPPED')
        else
          if r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then
            theme_to_open = theme_list_table['unzipped'][i]
          end
        end
      end
      r.ImGui_Separator(ctx)
      r.ImGui_TextDisabled(ctx, 'ZIPPED')
      for i = 1 , #theme_list_table['zipped'] do
        if r.ImGui_MenuItem(ctx, theme_list_table['zipped'][i]) then
          theme_to_open = theme_list_table['zipped'][i]
        end
      end
      r.ImGui_EndMenu(ctx)
    end

    r.ImGui_EndMenu(ctx)
  end
  r.ImGui_EndMenuBar(ctx)

end

menu_new_theme()
menu_delete_theme(theme_to_delete)
open_theme(theme_to_open)