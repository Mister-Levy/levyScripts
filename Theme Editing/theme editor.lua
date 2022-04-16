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
  provides    : main table.lua
                config.lua
                init.lua
                management.lua
                color presets.lua
]]--
  debug_script = true
  reaper.ClearConsole()
  win = string.find(reaper.GetOS(), "Win") -- returns 1 if OS is Windows nil if OS is other  -- get folder seperator
  sep = win and "\\" or "/"
  info = debug.getinfo(1,'S')
  script_folder = info.source:match[[^@?(.*[\/])[^\/]-$]]
  dofile(reaper.GetResourcePath() .. sep .. 'Scripts' .. sep .. 'levyScripts' .. sep .. 'Function Library' .. sep .. 'init.lua')
--------------------------------------------------------------------------------------------------------------------------------

dofile(script_folder .. 'main table.lua')
dofile(script_folder .. 'config.lua')
dofile(script_folder .. 'init.lua')
dofile(script_folder .. 'management.lua')

function loop()

  local visible , open = r.ImGui_Begin(ctx, "Theme Editor", true, r.ImGui_WindowFlags_NoCollapse() | r.ImGui_WindowFlags_MenuBar())

  if visible then

    dofile(script_folder .. 'menu bar.lua')
    dofile(script_folder .. 'tab bar.lua')

    r.ImGui_End(ctx)
  end

  if open then
    r.defer(loop)
  else
    r.ImGui_DestroyContext(ctx)
  end

end

loop()