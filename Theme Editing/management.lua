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

function create_new_theme(name)
  if not check_theme_exists(name) then
    create_folder(ColorThemes_path .. name)

    file = io.open(ColorThemes_path .. name .. sep .. 'rtconfig.txt' , 'w+')
    file:write(';ThemeEditorVersion=aaa' .. theme_editor_version)
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