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
      else
        type_of_file = 'unzipped'
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
    if theme and string.match(theme, theme_name .. theme_file_extension) then
      return true
    end
    i = i + 1
  until not theme and i > 0
  return nil
end

function create_new_theme(name)
  if not check_theme_exists(name) then
    create_folder(ColorThemes_path .. name)

    file = io.open(ColorThemes_path .. name .. sep .. 'rtconfig.txt' , 'w+')
    file:write(';ThemeEditorVersion=' .. theme_editor_version)
    file:close()

    file = io.open(ColorThemes_path .. name .. '.ReaperTheme' , 'w+')
    file:write('[color theme]\n' ..
      '[REAPER]\n' ..
      'ui_img=' .. name)
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

function set_theme_file_value(theme_file_path, index, new_value)
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
  file:write(rest_of_file)
  file:close()
end

function refresh_theme()
  r.OpenColorThemeFile( r.GetLastColorThemeFile() )
  r.UpdateArrange()
  r.UpdateTimeline()
end 
