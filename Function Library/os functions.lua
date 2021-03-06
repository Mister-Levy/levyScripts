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

function delete_file(path)
  if win then
    debug_msg('delete_file(path) (win) ' .. [[ os.execute('del /f "]] .. path .. [["') ]])
    os.execute('del /f "' .. path .. '"')
  else
    debug_msg('delete_file(path) (macos) ' .. [[ os.execute('rm "']] .. path .. [['"') ]])
    os.execute('rm "' .. path .. '"')
  end
end

function open_file(path)
  if win then
    os.execute('"' .. path .. '"')
  else
    os.execute('open "' .. path  .. '"')
  end
end

function copy_file(original_file, duplicate_file)
  if win then
    os.execute('copy /y "' .. original_file .. '" "' .. duplicate_file .. '"')
  else
    os.execute('cp "' .. original_file .. '" "' .. duplicate_file .. '"')
  end
end

function copy_folder(original_folder, duplicate_folder)
  if win then
    os.execute('mkdir "' .. duplicate_folder .. '"')
    os.execute('Xcopy "' .. original_folder .. '" "' .. duplicate_folder .. '" /e/y')
  else
    os.execute('cp -R ' .. string.gsub(original_folder, " ", "\\ ") .. ' ' .. string.gsub(duplicate_folder, " ", "\\ ") .. '')
  end
end

function delete_folder(path)
  if win then
    os.execute('rd /s/q "' .. path .. '"')
  else
    os.execute('rm -r "' .. path .. '"')
    os.execute('rmdir  "' .. path .. '"')
  end
end

function create_folder(new_folder_path)
  if win then
    os.execute('mkdir "' .. new_folder_path .. '"')
  else
    os.execute('mkdir "' .. new_folder_path .. '"')
  end
end
