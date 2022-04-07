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

function delete_theme(name) 
  local theme_file_delete_path = string.gsub(r.GetLastColorThemeFile(), file_from_path, name)
  delete_folder(get_theme_folder_path(name))
  delete_file(theme_file_delete_path .. '.ReaperTheme')
end

function get_theme_folder_name(theme_name) -- Returns the name of the theme folder
  for line in io.lines(ColorThemes_path .. theme_name .. ".ReaperTheme") do
    if string.find(line, "ui_img") then
      theme_folder_name = string.match(line, "=(%C*)")
    end
  end
  return theme_folder_name
end

function get_theme_folder_path(name)   -- Returns full theme folder path
  theme_folder_path = get_theme_folder_name(name)
  return string.gsub(r.GetLastColorThemeFile(), file_from_path_with_extension, theme_folder_path)
end

function check_theme_exists(theme_name)
  local i = -1
  repeat
    local theme = r.EnumerateFiles(ColorThemes_path, i)
    if theme and string.match(theme, sep .. theme_name .. '.') then
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