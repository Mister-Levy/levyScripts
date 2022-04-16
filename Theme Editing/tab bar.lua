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

if r.ImGui_BeginTabBar(ctx, '##tab bar') then

  if r.ImGui_BeginTabItem(ctx, 'Panels') then

    dofile(script_folder .. 'panels.lua')

    r.ImGui_EndTabItem(ctx)
  end

  r.ImGui_EndTabBar(ctx)
end