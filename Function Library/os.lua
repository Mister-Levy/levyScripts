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

-- r.ShowConsoleMsg("\nos function.lua\n")

function delete_file(path)
  if win then
    os.execute('del /f "' .. path .. '"')
  else
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

function rename_file(old_file_path, new_file_path)
    os.rename (old_file_path, new_file_path)
end

function read_file_to_table(file_path)
  local file_table = {}
  local file = io.open(file_path, "r") --Reading.
  for line in file:lines() do
    file_table[#file_table + 1] = line
  end
  file:close()
  return file_table
end