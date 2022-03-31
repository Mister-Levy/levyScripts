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

pattern_1   = '[^' .. sep .. ']+$'                                                        -- all characters from the last sep to the end (not including the sep) 
pattern_2   = '([^' .. sep .. ']+)' .. sep .. '$'                                         -- all characters between the second last sep to the end if the end is a sep (not including the sep)
pattern_3   = '(.+' .. sep .. ')[^' .. sep .. ']*$'                                       -- all characters from the start to the last sep (including the sep)
pattern_4   = '([^' .. sep .. ']+)' .. sep .. '[^' .. sep .. ']*$'                        -- all characters between the second last sep and the last sep (not including the sep)
pattern_5   = '([^' .. sep .. ']+).png$'                                                  -- all characters from the last sep to the .png if at the end (not including the sep or the .png)
pattern_6   = r.GetResourcePath() .. sep .. "ColorThemes" .. sep .. '([^' .. sep .. ']+)' -- get theme folder name from path excluding seps
pattern_7   = '^[^_]+'                                                                    -- all characters from the start to the first underscore (not including the underscore)
pattern_8   = '^[^%.]+'                                                                   -- all characters from the start to the first . (not including the .)
pattern_9   = '^(.+)%..+$'                                                                -- all characters from the start to the last . (not including the .)
pattern_10  = '%..+$'                                                                    -- all characters from the last . to the end (not including the .)
pattern_11  = '([^' .. sep .. ']+)%..+$'                                                 -- all characters from the last sep to the last . with a file type after if at the end (not including the sep or the . or file type) 
pattern_12  = "([^" .. sep .. "]+).[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee]$"        -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
pattern_12a = "([^" .. sep .. "]+)%.%w*$"                                                 -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
pattern_13  = '^%s*Layout%s*"[%a%d%s]+"'                                                 -- '   Layout " any Layout name y0u want "    ' = '   Layout " any Layout name y0u want "' 
pattern_14  = '"([%a%d%s]+)"'                                                            -- '   Layout " any Layout name y0u want "    ' = ' any Layout name y0u want ' 
pattern_15  = "current_edit_element$" 

file_from_path = "([^" .. sep .. "]+)%.%w*$" -- eg. 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
file_from_path_with_extension = "([^" .. sep .. "]+%.%w*)$" -- eg. 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
theme_file_extension = '.[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee][Zz]*[Ii]*[Pp]*$'


