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
  if not r.file_exists( r.GetLastColorThemeFile()) then
      return true
  else
      return false
  end
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
        theme = string.gsub(theme, theme_file_extension , "")
        table.insert(theme_list_table[type_of_file], theme)
    end
    i = i + 1
  until not theme and i > 0
  return theme_list_table
end