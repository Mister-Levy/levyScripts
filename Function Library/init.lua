--[[
  about       :
  description :
  donation    :
  link        :
  noindex     :
  screenshot  :
  version     : 0.1
  author      : Mister Levy
  changelog   :
  metapackage :
  provides    : os.lua
                debug.lua
                imgui.lua
                patterns.lua
                theme.lua
]]--

r = reaper
timer = r.time_precise()
info = debug.getinfo(1,'S')
levy_scripts_folder = r.GetResourcePath() .. sep .. 'Scripts' .. sep .. 'levyScripts' .. sep
function_library_folder = info.source:match[[^@?(.*[\/])[^\/]-$]]
dofile(function_library_folder .. 'os.lua')
dofile(function_library_folder .. 'debug.lua')
dofile(function_library_folder .. 'imgui.lua')
dofile(function_library_folder .. 'patterns.lua')
dofile(function_library_folder .. 'theme.lua')
dofile(function_library_folder .. 'string manipulation.lua')