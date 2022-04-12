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

ColorThemes_path = reaper.GetResourcePath() .. sep .. "ColorThemes" .. sep

function theme_is_unzipped()
  return r.file_exists(r.GetLastColorThemeFile())
end 

function theme_is_zipped()
  return string.match(r.GetLastColorThemeFile(), '[Zz][Ii][Pp]$')
end

function create_theme_list_table()
  theme_list_table = {['zipped'] = {}, ['unzipped'] = {}}
  local i = -1
  repeat
    local theme = r.EnumerateFiles(ColorThemes_path, i)
    if theme and string.match(theme, theme_file_extension) then
      if theme:match('[Zz][Ii][Pp]$') then
        type_of_file = 'zipped'
        if not theme:match('.ReaperThemeZip') then rename_file(ColorThemes_path .. theme, ColorThemes_path .. string.gsub(theme, theme_file_extension, "") .. '.ReaperThemeZip') end
      else
        type_of_file = 'unzipped'
        if not theme:match('.ReaperTheme') then rename_file(ColorThemes_path .. theme, ColorThemes_path .. string.gsub(theme, theme_file_extension, "") .. '.ReaperTheme') end
      end
        theme = string.gsub(theme, theme_file_extension, "")
        table.insert(theme_list_table[type_of_file], theme)
    end
    i = i + 1
  until not theme and i > 0
  return theme_list_table
end

function delete_theme(theme_name)
  local theme_file_delete_path = string.gsub(r.GetLastColorThemeFile(), file_from_path, theme_name .. '.ReaperTheme')
  delete_folder(get_theme_folder_path(theme_name))
  delete_file(theme_file_delete_path)
end

function get_theme_folder_name(theme_name) -- Returns the name of the theme folder
  for line in io.lines(ColorThemes_path .. theme_name .. ".ReaperTheme") do
    if string.find(line, "ui_img") then
      theme_folder_name = string.match(line, "=(%C*)")
    end
  end
  return theme_folder_name
end

function get_theme_folder_path(theme_name)   -- Returns full theme folder path
  theme_folder_path = get_theme_folder_name(theme_name)
  return string.gsub(r.GetLastColorThemeFile(), file_from_path_with_extension, theme_folder_path)
end

function check_theme_exists(theme_name)
  local i = -1
  repeat
    local theme = r.EnumerateFiles(ColorThemes_path, i)
    if theme and string.match(theme, sep .. theme_name .. theme_file_extension) then
      match = string.match(theme, theme_name .. theme_file_extension)
      return true
    end
    i = i + 1
  until not theme and i > 0
  return nil
end

function create_new_theme(new_theme_name)
  if not check_theme_exists(new_theme_name) then
    create_folder(ColorThemes_path .. new_theme_name)

    file = io.open(ColorThemes_path .. new_theme_name .. sep .. 'rtconfig.txt' , 'w+')
    file:write( ';[THEME_EDITOR]' ..
                '\n name=' .. new_theme_name ..
                '\n version=' .. theme_editor_version)
    -- Globals

      file:write(
        '\n;[GLOBALS]\n' ..
        ' version 6.0\n' ..
        ' use_pngs 1\n' ..
        ' use_overlays 1\n' ..
        ' tinttcp 298\n' ..
        ' peaksedges 0\n' ..
        ' no_meter_reclbl 1\n' ..
        ' envcp_min_height 29\n' ..
        ' gen_vol_zeroline FF000000\n' ..
        ' gen_pan_zeroline FF000000\n' ..
        ' item_volknobfg 85000000 FF778485 00474F4F\n' ..
        ' mcp_showborders 0\n' ..
        ' mcp_vupeakheight 2\n' ..
        ' mcp_mastervupeakheight 4\n' ..
        ' mcp_altmeterpos 0\n' ..
        ' mcp_vol_zeroline FF666666\n' ..
        ' mcp_pan_zeroline 85000000\n' ..
        ' mcp_min_height 240\n' ..
        ' mcp_voltext_flags 5 5\n' ..
        ' tcp_showborders 0\n' ..
        ' tcp_vupeakwidth 2\n' ..
        ' tcp_vol_zeroline FF666666\n' ..
        ' tcp_pan_zeroline 66000000\n' ..
        ' tcp_master_minheight 56\n' ..
        ' tcp_voltext_flags 12\n' ..
        ' tcp_heights 4 25 50 64  ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
        ' tcp_heights 1 31 50 64   ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
        ' tcp_folderindent 0\n' ..
        ' trans_speed_zeroline 85000000\n' ..
        ' transport_showborders 0\n' ..
        ' misc_dpi_translate 134 150\n' ..
        ' misc_dpi_translate 174 200\n\n' )

    -- Define Parameters

      file:write( ';[DEFINED_PARAMETERS]\n' )
        for i = 0, 3000 do             -- name             desc            def       min        max
          file:write(' define_parameter ' .. string.gsub( new_theme_name , ' ' , '_' ) .. '_' .. i .. ' desc_' .. i .. ' 0' .. ' -9999' .. ' 9999\n' )
        end
      file:write( '\n' )

    -- Macros

      file:write( ';[MACROS]\n' )
      file:write( ' set selected + ?track_selected 1 0\n' ..
                  ' set armed    + ?recarm 2 0\n' .. 
                  ' set mixer    + ?mixer_visible 4 0\n' ..
                  ' set state    + + selected armed mixer\n' )

    -- Colour Presets

      file:write( ';[COLOUR_PRESETS]\n' ) 
      file:write( ' set track_color     [ 000 000 000 255 ]\n' ..
                  ' set black_and_white [ 000 000 000 255 ]\n' ..
                  ' set black           [ 000 000 000 255 ]\n' ..
                  ' set white           [ 255 255 255 255 ]\n' ..
                  ' set red             [ 255 000 000 255 ]\n' ..
                  ' set purple          [ 255 000 255 255 ]\n' ..
                  ' set blue            [ 000 000 255 255 ]\n' ..
                  ' set green           [ 000 255 000 255 ]\n' ..
                  ' set yellow          [ 255 255 000 255 ]\n' ..
                  ' set orange          [ 255 128 000 255 ]\n' )

    -- Default Layout

      file:write( ';[DEFAULT_LAYOUT]\n' )

    -- Other Layouts

      file:write( ';[OTHER_LAYOUTs]\n' )




    file:close()

    file = io.open(ColorThemes_path .. new_theme_name .. '.ReaperTheme' , 'w+')
    file:write('[color theme]\n' ..
      '[REAPER]\n' ..
      'ui_img=' .. new_theme_name)
    file:close()
    return true
  else
    return nil
  end
end

function open_theme(theme_file)
  r.OpenColorThemeFile(ColorThemes_path .. theme_file)
  r.UpdateArrange()
  r.UpdateTimeline()
end

function duplicate_theme(original_theme_name , duplicate_theme_name)
  if not check_theme_exists(duplicate_theme_name) then
    local new_theme_file_path = string.gsub(r.GetLastColorThemeFile(), file_from_path, duplicate_theme_name .. '.ReaperTheme')
    local old_theme_file_path = string.gsub(r.GetLastColorThemeFile(), file_from_path, original_theme_name .. '.ReaperTheme')
    copy_file(string.gsub(r.GetLastColorThemeFile(), file_from_path, original_theme_name .. '.ReaperTheme'), new_theme_file_path)
    local new_theme_folder_path = r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. duplicate_theme_name
    local old_theme_folder_path = get_theme_folder_path(original_theme_name)
    copy_folder(old_theme_folder_path, new_theme_folder_path)
    r.OpenColorThemeFile(new_theme_file_path) -- Open new theme
    set_theme_file_value(r.GetLastColorThemeFile(), "ui_img", duplicate_theme_name)
    return true
  else
    return nil
  end
end

function set_theme_file_value(theme_file_path, section, index, new_value)
  local file = io.open(theme_file_path, "r") --Reading.
  local lines = {}
  local rest_of_file
  local line_count = 1
  for line in file:lines() do
    if string.sub(line, 1, string.len(index)) == index then --Is this the line to modify?
      lines[#lines + 1] = index .. '=' .. new_value --Change old line into new line.
      rest_of_file = file:read("*a")
      break
    else
        line_count = line_count + 1
        lines[#lines + 1] = line
    end
  end
  file:close()
  file = io.open(theme_file_path , "w") --write the file.
  for i, line in ipairs(lines) do
    file:write(line, "\n")
  end
  if rest_of_file then file:write(rest_of_file) end
  file:close()
end

function set_rtconfig_value(rtconfig_path, section, index, new_value)
  local file = io.open(rtconfig_path, "r") --Reading.
  local lines = {}
  local rest_of_file
  local line_count = 1
  local write = nil
  for line in file:lines() do
    if string.find(line, ';%[' .. section .. '%]') then write = true end
    if write and string.find(line, index) then --Is this the line to modify?
      lines[#lines + 1] = index .. new_value --Change old line into new line.
      rest_of_file = file:read("*a")
      break
    else
        line_count = line_count + 1
        lines[#lines + 1] = line
    end
  end
  file:close()
  file = io.open(rtconfig_path , "w") --write the file.
  for i, line in ipairs(lines) do
    file:write(line, "\n")
  end
  if rest_of_file then file:write(rest_of_file) end
  file:close()
end

function insert_rtconfig_value(rtconfig_path, section, new_line)
  local file = io.open(rtconfig_path, "r") --Reading.
  local lines = {}
  local rest_of_file
  local line_count = 1
  for line in file:lines() do
    if string.find(line, ';%[' .. section .. '%]') == 1 then --Is this the line to modify?
      lines[#lines + 1] = line --Change old line into new line.
      lines[#lines + 1] = new_line
      rest_of_file = file:read("*a")
      break
    else
        line_count = line_count + 1
        lines[#lines + 1] = line
    end
  end
  file:close()
  file = io.open(rtconfig_path , "w") --write the file.
  for i, line in ipairs(lines) do
    file:write(line, "\n")
  end
  if rest_of_file then file:write(rest_of_file) end
  file:close()
end

function refresh_theme()
  r.OpenColorThemeFile( r.GetLastColorThemeFile() )
  r.UpdateArrange()
  r.UpdateTimeline()
end

function read_rtconfig_to_table(rtconfig_path)
  local rtconfig_table = {}
  local file = io.open(rtconfig_path, "r") --Reading.
  for line in file:lines() do
        rtconfig_table[#rtconfig_table + 1] = line
    end
  end
  file:close()
end
