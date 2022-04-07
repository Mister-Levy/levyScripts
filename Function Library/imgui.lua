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

function spacing(number)
  for i = 1, number do
    r.ImGui_Spacing(ctx)
  end
end

function modal_text_entry(ctx, title, message, default_text)
  local response = nil
  r.ImGui_OpenPopup(ctx, title)
  if r.ImGui_BeginPopupModal(ctx, title, nil , r.ImGui_WindowFlags_AlwaysAutoResize()) then
    --TODO: Enter key doesnt work
    if not r.ImGui_IsAnyItemActive(ctx) then r.ImGui_SetKeyboardFocusHere(ctx) end
    r.ImGui_TextWrapped(ctx, message)
    rv, modal_text_entry_result = r.ImGui_InputText(ctx, '##modal_text_entry', default_text)
    r.ImGui_Separator(ctx)
    spacing(1)
    if r.ImGui_Button(ctx, 'OK', 120, 0) or r.ImGui_IsKeyPressed(ctx, 13) then
      response = 1
      r.ImGui_CloseCurrentPopup(ctx)
    end
    r.ImGui_SameLine(ctx)
    if r.ImGui_Button(ctx, 'Cancel', 120, 0) then
      response = 0
      r.ImGui_CloseCurrentPopup(ctx)
    end
    r.ImGui_SetItemDefaultFocus(ctx)
    r.ImGui_EndPopup(ctx)
  end
  return response, modal_text_entry_result
end

function modal_confirmation(ctx, title, message) --TODO: not finished
  local response = nil
  r.ImGui_OpenPopup(ctx, title)
  if r.ImGui_BeginPopupModal(ctx, title, nil , r.ImGui_WindowFlags_AlwaysAutoResize()) then
    if reaper.ImGui_IsWindowAppearing(ctx) then reaper.ImGui_SetKeyboardFocusHere(ctx) end
    r.ImGui_TextWrapped(ctx, message)
    spacing(2)
    r.ImGui_Separator(ctx)
    spacing(1)
    if r.ImGui_Button(ctx, 'Yes', 80, 0) then
      response = 1
      r.ImGui_CloseCurrentPopup(ctx)
    end
    r.ImGui_SameLine(ctx)
    if r.ImGui_Button(ctx, 'No', 80, 0) then
      response = 0
      r.ImGui_CloseCurrentPopup(ctx)
    end
    r.ImGui_SetItemDefaultFocus(ctx)
    r.ImGui_EndPopup(ctx)
  end
  return response
end

function modal_dialog_message(ctx, title, message)
  local response = nil
  r.ImGui_OpenPopup(ctx, title)
  if r.ImGui_BeginPopupModal(ctx, title, nil , r.ImGui_WindowFlags_AlwaysAutoResize()) then
    r.ImGui_Text(ctx, message)
    r.ImGui_Separator(ctx)
    spacing(1)
    if not r.ImGui_IsAnyItemActive(ctx) then r.ImGui_SetKeyboardFocusHere(ctx) end
    if r.ImGui_Button(ctx, 'OK', 120, 0) or r.ImGui_IsKeyPressed(ctx, 13) then
      response = true
      r.ImGui_CloseCurrentPopup(ctx)
    end
    r.ImGui_SetItemDefaultFocus(ctx)
    r.ImGui_EndPopup(ctx)
  end
  return response
end