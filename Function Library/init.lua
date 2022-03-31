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
  provides    : os functions.lua
]]--

r = reaper
info = debug.getinfo(1,'S')
levy_scripts_folder = reaper.GetResourcePath() .. sep .. 'Scripts' .. sep .. 'levyScripts' .. sep
function_library_folder = info.source:match[[^@?(.*[\/])[^\/]-$]]
dofile(function_library_folder .. 'os functions.lua')