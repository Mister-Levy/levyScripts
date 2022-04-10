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
  provides    :
]]--
  debug_script = true
  reaper.ClearConsole()
  win = string.find(reaper.GetOS(), "Win") -- returns 1 if OS is Windows nil if OS is other  -- get folder seperator
  sep = win and "\\" or "/"
  info = debug.getinfo(1,'S')
  script_folder = info.source:match[[^@?(.*[\/])[^\/]-$]]
  dofile(reaper.GetResourcePath() .. sep .. 'Scripts' .. sep .. 'levyScripts' .. sep .. 'Function Library' .. sep .. 'init.lua')
  ------------------------------------------------------------------------------------------------------------------------------------------------
  
ctx = reaper.ImGui_CreateContext('String Pattern Tester')

function loop()

  local visible , open = r.ImGui_Begin( ctx , "String Pattern Tester" , true , r.ImGui_WindowFlags_NoCollapse())

  if visible then

    rv_pattern, pattern_string = r.ImGui_InputText(ctx, "String Pattern", pattern_string)
    rv_test, test_string = r.ImGui_InputText(ctx, "Test String", test_string)

    if string.match(test_string, pattern_string) then
      match_result = string.match(test_string, pattern_string)
    end

    r.ImGui_Text(ctx, 'string.match = ' .. match_result)

    if string.gsub(test_string, pattern_string, '-replacement-') then
      gsub_result = string.gsub(test_string, pattern_string, '-replacement-')
    end

    r.ImGui_Text(ctx, 'string.gsub = ' .. gsub_result)

    r.ImGui_End(ctx)
  end

  if open then
    r.defer(loop)
  else
    r.ImGui_DestroyContext(ctx)
  end

end

loop()