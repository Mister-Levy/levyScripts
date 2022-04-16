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

  if rv_new_theme then
    response, new_theme_name = modal_text_entry(ctx, "##new_theme", "Please enter a name for your new theme", new_theme_name)
    if response then
      rv_new_theme = nil
      if response == 1 then
        if create_new_theme(new_theme_name) then
          create_theme_list_table()
        else
          rv_new_theme_warning = true
        end
      end
    end
  end

  if rv_new_theme_warning then
    response = modal_dialog_message(ctx, 'SORRY', 'A theme with the name "' .. new_theme_name .. '" already exists.\n\nPlease choose a new name for your theme')
    if response then rv_new_theme_warning = nil rv_new_theme = true end
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

function menu_open_theme(theme_to_open)
  if theme_to_open then
    open_theme(theme_to_open)
    create_theme_list_table()
  end
end

function menu_duplicate_theme(theme_to_duplicate)
  if rv_duplicate_theme then
    response, duplicate_theme_name = modal_text_entry(ctx, "##new_theme", "Please enter a name for your new theme", duplicate_theme_name)
    if response then
      rv_duplicate_theme = nil
      if response == 1 then
        if duplicate_theme(theme_to_duplicate , duplicate_theme_name) then
          refresh_theme()
          create_theme_list_table()
        else
          rv_duplicate_theme_warning = true
        end
      end
    end
  end

  if rv_duplicate_theme_warning then
    response = modal_dialog_message(ctx, 'SORRY', 'A theme with the name "' .. duplicate_theme_name .. '" already exists.\n\nPlease choose a new name for your theme')
    if response then rv_duplicate_theme_warning = nil rv_duplicate_theme = true end
  end
end

theme_to_open = false

if r.ImGui_BeginMenuBar(ctx) then
  if r.ImGui_BeginMenu(ctx, menu_bar_name) then
    ------------------------------------------------------------------
    rv_new_theme = r.ImGui_MenuItem(ctx, 'New')
    ------------------------------------------------------------------
    if r.ImGui_BeginMenu(ctx , 'Open') then
      r.ImGui_TextDisabled(ctx, 'UNZIPPED')
      for i = 1 , #theme_list_table['unzipped'] do
        if theme_list_table['unzipped'][i] == string.match(r.GetLastColorThemeFile(), file_from_path) then
        elseif r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then
          theme_to_open = theme_list_table['unzipped'][i] .. '.ReaperTheme'
        end
      end
      r.ImGui_Separator(ctx)
      r.ImGui_TextDisabled(ctx, 'ZIPPED')
      for i = 1 , #theme_list_table['zipped'] do
        if theme_list_table['zipped'][i] == string.match(r.GetLastColorThemeFile(), file_from_path) then
        elseif r.ImGui_MenuItem(ctx, theme_list_table['zipped'][i]) and not string.match(r.GetLastColorThemeFile(), theme_list_table['zipped'][i] .. theme_file_extension) then
          theme_to_open = theme_list_table['zipped'][i] .. '.ReaperThemeZip'
        end
      end
      r.ImGui_EndMenu(ctx)
    end
    ------------------------------------------------------------------
    if r.ImGui_BeginMenu(ctx , 'Duplicate') then
      if r.ImGui_MenuItem(ctx, string.match(r.GetLastColorThemeFile(), file_from_path)) then -- list all unzipped themes
        theme_to_duplicate = string.match(r.GetLastColorThemeFile(), file_from_path)
        duplicate_theme_name = theme_to_duplicate .. ' (copy)'
        rv_duplicate_theme = true
      end
      r.ImGui_Separator(ctx)
      for i = 1 , #theme_list_table['unzipped'] do
        if not string.match(r.GetLastColorThemeFile(), sep .. theme_list_table['unzipped'][i] .. theme_file_extension) then -- don't give option to duplicate current theme
          if r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then -- list all unzipped themes
            theme_to_duplicate = theme_list_table['unzipped'][i]
            duplicate_theme_name = theme_to_duplicate .. ' (copy)'
            rv_duplicate_theme = true
          end
        end
      end
      r.ImGui_EndMenu(ctx)
    end
    ------------------------------------------------------------------
    if r.ImGui_BeginMenu(ctx , 'Delete') then
      for i = 1 , #theme_list_table['unzipped'] do
        if theme_list_table['unzipped'][i] == string.match(r.GetLastColorThemeFile(), file_from_path) then -- don't give option to delete current theme
        elseif r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then -- list all unzipped themes
          theme_to_delete = theme_list_table['unzipped'][i]
        end
      end
      r.ImGui_EndMenu(ctx)
    end
    ------------------------------------------------------------------
    if develop_mode then -- turn on/off in config.lua file
      ------------------------------------------------------------------
      r.ImGui_Separator(ctx)
      if r.ImGui_BeginMenu(ctx, 'rtconfig Files') then
        for i = 0, #theme_list_table['unzipped'] do
          if i == 0 then
            if r.ImGui_MenuItem(ctx, string.match(r.GetLastColorThemeFile(), pattern_12)) then
              local folder      = string.match(get_theme_folder_path(string.match(r.GetLastColorThemeFile(), pattern_12)), pattern_1)
              local folder_path = string.gsub(r.GetLastColorThemeFile(), pattern_1, folder )
              open_file(folder_path .. sep .. "rtconfig.txt")
            end
            r.ImGui_Separator(ctx)
          else
            if r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then
              open_file(get_theme_folder_path(theme_list_table['unzipped'][i]) .. sep .. "rtconfig.txt")
            end
          end
        end
        r.ImGui_EndMenu(ctx)
      end
      ------------------------------------------------------------------
      if r.ImGui_BeginMenu( ctx , 'Theme Files' ) then
        for i = 0, #theme_list_table['unzipped'] do
          if i == 0 then
            if r.ImGui_MenuItem(ctx, string.match(r.GetLastColorThemeFile(), pattern_12)) then
              open_file(r.GetLastColorThemeFile())
            end
            r.ImGui_Separator(ctx)
          else
            if r.ImGui_MenuItem(ctx, theme_list_table['unzipped'][i]) then 
              open_file(r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_list_table['unzipped'][i] .. ".ReaperTheme" )
            end
          end
        end
        r.ImGui_EndMenu( ctx ) 
      end
    end
    ------------------------------------------------------------------
    if r.ImGui_MenuItem( ctx, 'Function Test') then
      -- PUT THE FUNCTION YOU WANT TO TEST HERE
      -- create_theme_list_table()
    end
    r.ImGui_EndMenu(ctx)
    ------------------------------------------------------------------
  end
    ------------------------------------------------------------------
    r.ImGui_TextDisabled(ctx, '  CURRENT THEME:') ; r.ImGui_SameLine(ctx)
    r.ImGui_Text(ctx, string.match(r.GetLastColorThemeFile(), file_from_path))
    if theme_is_zipped() then r.ImGui_SameLine(ctx) r.ImGui_TextColored(ctx, 0xFF5555FF, ' (zipped)') end ; r.ImGui_SameLine(ctx)
    ------------------------------------------------------------------
  r.ImGui_EndMenuBar(ctx)  
end

menu_new_theme()
menu_delete_theme(theme_to_delete)
menu_open_theme(theme_to_open)
menu_duplicate_theme(theme_to_duplicate)