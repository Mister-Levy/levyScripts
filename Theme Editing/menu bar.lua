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

function new_theme()

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

function delete_theme()
end

function open_theme()

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

new_theme()
delete_theme(theme_to_delete)
open_theme(theme_to_open)













-- if not  theme_is_zipped() and r.ImGui_BeginMenu(ctx , 'Duplicate') then

--   for i = 0 , #theme_list_table do

--     if i == 0 then
--       if r.ImGui_MenuItem(ctx , string.match(r.GetLastColorThemeFile() , pattern_12)) then
--         selected_theme        = string.match(r.GetLastColorThemeFile() , pattern_12)
--         duplicate_theme_name  = selected_theme
--       end
--       r.ImGui_Separator(ctx)
--     else
--       if r.ImGui_MenuItem(ctx , theme_list_table[i]) then
--         selected_theme        = theme_list_table[i]
--         duplicate_theme_name  = selected_theme
--       end
--   end

--   end

--   r.ImGui_EndMenu(ctx)
-- end

    -- --

    -- -- Open Theme

    --   if r.ImGui_BeginMenu(ctx , 'Open') then

    --     for i = 1, #theme_list_table do

    --       if theme_list_table[i] == nil then break end

    --       if r.ImGui_MenuItem(ctx , theme_list_table[i]) then

    --         r.OpenColorThemeFile(string.gsub(r.GetLastColorThemeFile() , pattern_1 , theme_list_table[i] .. ".ReaperTheme"))
    --         get_theme_list()

    --       end

    --     end


    --     r.ImGui_EndMenu(ctx)
    --   end

    -- --

    -- -- Delete Theme

    --   if r.ImGui_BeginMenu(ctx , 'Delete') then

    --     for i = 1, #theme_list_table do
    --       if theme_list_table[i] == nil then break end
    --       if r.ImGui_MenuItem(ctx , theme_list_table[i]) then
    --         rv = r.ShowMessageBox('Delete "' .. theme_list_table[i] .. '" theme?' , "" , 1)
    --         if rv == 1 then
    --           delete_theme(theme_list_table[i])
    --         end
    --       end
    --     end

    --     r.ImGui_EndMenu(ctx)
    --   end

    --   r.ImGui_Separator(ctx)

    -- --

    -- -- Open rtconfig File

    --   if r.ImGui_BeginMenu(ctx , 'rtconfig Files') then

    --     for i = 0 , #theme_list_table do

    --       if i == 0 then
    --         if r.ImGui_MenuItem(ctx , string.match(r.GetLastColorThemeFile() , pattern_12)) then
    --           local folder                    = string.match(get_theme_folder_path(string.match(r.GetLastColorThemeFile() , pattern_12)) , pattern_1)
    --           local folder_path  = string.gsub(r.GetLastColorThemeFile() , pattern_1 , folder)
    --           open_file(folder_path .. sep .. "rtconfig.txt")
    --         end
    --         r.ImGui_Separator(ctx)
    --       else
    --         if r.ImGui_MenuItem(ctx , theme_list_table[i]) then
    --           open_file(get_theme_folder_path(theme_list_table[i]) .. sep .. "rtconfig.txt")
    --         end
    --     end

    --     end

    --     r.ImGui_EndMenu(ctx)
    --   end

    -- --

    -- -- Open Theme File

    --   if r.ImGui_BeginMenu(ctx , 'Theme Files') then

    --     for i = 0 , #theme_list_table do

    --       if i == 0 then
    --         if r.ImGui_MenuItem(ctx , string.match(r.GetLastColorThemeFile() , pattern_12)) then
    --           open_file(r.GetLastColorThemeFile())
    --         end
    --         r.ImGui_Separator(ctx)
    --       else
    --         if r.ImGui_MenuItem(ctx , theme_list_table[i]) then
    --           open_file(r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_list_table[i] .. ".ReaperTheme")
    --         end
    --     end

    --     end

    --     r.ImGui_EndMenu(ctx)
    --   end

    -- --

    -- -- Open themeconfig

    --   if r.ImGui_MenuItem(ctx , 'Theme Config') then
    --     open_file(r.GetResourcePath() .. sep .. 'reaper-themeconfig.ini')
    --   end

    -- --

    -- -- Refresh Theme

    --   if r.ImGui_MenuItem(ctx , 'Refresh Theme')  then
    --     refresh_theme()
    --   end

    -- --

    -- -- Debug Script

    --   if debug_log then
    --     if r.ImGui_MenuItem(ctx , 'Debug Script')  then
    --       msg()
    --     end
    --   end

    -- --

    -- -- Test Function

    --   if r.ImGui_MenuItem(ctx , 'Function Test')  then
    --     -- set_theme_config_parameters()

    --     set_rtconfig_element_values('layout' , 'tcp.recarm')

    --   end

    -- --

    -- -- End Menu

    --       r.ImGui_EndMenu(ctx)
    --     end

    -- --

    -- -- Current Theme

    --   r.ImGui_TextDisabled(ctx , '  CURRENT THEME:') ; r.ImGui_SameLine(ctx)
    --   r.ImGui_Text(ctx , string.match(r.GetLastColorThemeFile() , pattern_12))
    --   if theme_is_zipped() == true then r.ImGui_SameLine(ctx) r.ImGui_TextColored(ctx , 0xFF5555FF , '(zipped)') end ; r.ImGui_SameLine(ctx)

    -- --

    -- End MenuBar

      -- r.ImGui_EndMenuBar(ctx)
      -- end

    --

    -- Menu Results

    --   if new_theme_name       then modal_window_new_theme_name()       end
    --   if duplicate_theme_name then modal_window_duplicate_theme_name() end

    -- --
  --