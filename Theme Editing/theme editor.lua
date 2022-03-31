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
]]--
  debug_script = true
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
-- dofile(script_folder .. 'menu bar.lua')



function loop()

  local visible , open = r.ImGui_Begin( ctx , "Theme Editor" , true , r.ImGui_WindowFlags_NoCollapse() | r.ImGui_WindowFlags_MenuBar() )

  if visible then

    dofile(script_folder .. 'menu bar.lua')

    r.ImGui_End(ctx) 
  end 

  if open then
    r.defer(loop)
  else
    r.ImGui_DestroyContext(ctx)
  end 

end 


loop() 



--[[
-- -- INITIAL VALUES 

--   -- User 

--   window_title                      = 'Theme Editor' 

--   -- 

--   -- Values

--     r                                 = reaper
--     ctx                               = r.ImGui_CreateContext(window_title) 
--     win                               = string.find(r.GetOS(), "Win") -- returns 1 if OS is Windows nil if OS is other  -- get folder seperator
--     sep                               = win and "\\" or "/" 
--     timer                             = r.time_precise()
--     debug_log                         = true 
--     rtconfig_element_string_read_main = ' h<(%d) w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' .. 
--                                          'h<(%d) w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' .. 
--                                                 'w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] w<(%d) [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] [(%d) (%d) (%d) (%d) (%d) (%d) (%d) (%d)] ' 
  
--   --

--   -- Tables

--     -- 

--     panel_list = {"tcp", "master.tcp", "mcp", "master.mcp", "envcp", "trans"} 
--     -- 

--     selected_elements_table = {} 
--     -- 

--     element_list = {} 
--     element_combo_strings_table = {} 
--     panel_combo_list = ""

--       for i , v in ipairs( panel_list ) do 

--         panel_combo_list = panel_combo_list .. panel_list[ i ] .. "\31" 

--         element_list[ i ] = {} 
--         for k in pairs( main_table[ v ] ) do 
--           element_list[ i ][ #element_list[ i ] + 1 ] = k 
--         end 
--         table.sort( element_list[ i ] ) 

--         element_combo_strings_table[ i ] = '' 
--         for e = 1 , #element_list[ i ] do 
--           element_combo_strings_table[ i ] = element_combo_strings_table[ i ] .. element_list[ i ][ e ] .. "\31" 
--         end 

--       end 

--     -- 

--     theme_parameters_table = {}

--   -- 
  
--   -- Combo Box Strings 
--   -- 

--   -- Libraries

--     dofile( r.GetResourcePath() .. "/UserPlugins/ultraschall_api.lua" ) 

--   -- 

-- -- 

-- -- DEVELOPMENT 

--   -- String Search Patterns 

--     pattern_1   = '[^' .. sep .. ']+$'                                                        -- all characters from the last sep to the end (not including the sep) 
--     pattern_2   = '([^' .. sep .. ']+)' .. sep .. '$'                                         -- all characters between the second last sep to the end if the end is a sep (not including the sep)
--     pattern_3   = '(.+' .. sep .. ')[^' .. sep .. ']*$'                                       -- all characters from the start to the last sep (including the sep)
--     pattern_4   = '([^' .. sep .. ']+)' .. sep .. '[^' .. sep .. ']*$'                        -- all characters between the second last sep and the last sep (not including the sep)
--     pattern_5   = '([^' .. sep .. ']+).png$'                                                  -- all characters from the last sep to the .png if at the end (not including the sep or the .png)
--     pattern_6   = r.GetResourcePath() .. sep .. "ColorThemes" .. sep .. '([^' .. sep .. ']+)' -- get theme folder name from path excluding seps
--     pattern_7   = '^[^_]+'                                                                    -- all characters from the start to the first underscore (not including the underscore)
--     pattern_8   = '^[^%.]+'                                                                   -- all characters from the start to the first . (not including the .)
--     pattern_9   = '^(.+)%..+$'                                                                -- all characters from the start to the last . (not including the .)
--     pattern_10  = '%..+$'                                                                    -- all characters from the last . to the end (not including the .)
--     pattern_11  = '([^' .. sep .. ']+)%..+$'                                                 -- all characters from the last sep to the last . with a file type after if at the end (not including the sep or the . or file type) 
--     pattern_12  = "([^" .. sep .. "]+).[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee]$"        -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
--     pattern_12a = "([^" .. sep .. "]+)%.%w*$"                                                 -- 'Reaper/ColorThemes/Theme Name.ReaperTheme' = 'Theme Name' 
--     pattern_13  = '^%s*Layout%s*"[%a%d%s]+"'                                                 -- '   Layout " any Layout name y0u want "    ' = '   Layout " any Layout name y0u want "' 
--     pattern_14  = '"([%a%d%s]+)"'                                                            -- '   Layout " any Layout name y0u want "    ' = ' any Layout name y0u want ' 
--     pattern_15  = "current_edit_element$" 

--   --
    
-- --

-- -- FUNCTIONS 

--   -- ImGui 
    
--     function modal_window_new_theme_name() 
--       r.ImGui_OpenPopup( ctx , 'ENTER NEW THEME NAME' ) 
--       if r.ImGui_BeginPopupModal( ctx , 'ENTER NEW THEME NAME' , nil , r.ImGui_WindowFlags_AlwaysAutoResize() ) then 
--         -- if not r.ImGui_IsAnyItemActive( ctx ) then r.ImGui_SetKeyboardFocusHere( ctx ) end 
--         rv , new_theme_name = r.ImGui_InputText( ctx , '##new_theme_name', new_theme_name ) 
--         r.ImGui_Separator( ctx ) 
--         if r.ImGui_Button( ctx , 'OK' , 120 , 0 ) or r.ImGui_IsKeyPressed ( ctx , 13 ) then 
--           if not r.file_exists( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. new_theme_name .. '.ReaperTheme' ) and new_theme_name ~= 'ERROR: Theme already exists' then 
--             create_new_theme( new_theme_name )
--             new_theme_name = nil 
--             r.ImGui_CloseCurrentPopup( ctx ) 
--           else
--             new_theme_name = 'ERROR: Theme already exists'
--           end
--         end 
--         r.ImGui_SetItemDefaultFocus( ctx ) 
--         r.ImGui_SameLine( ctx ) 
--         if r.ImGui_Button( ctx , 'Cancel' , 120 , 0 ) then new_theme_name = nil r.ImGui_CloseCurrentPopup( ctx ) end 
--         r.ImGui_EndPopup( ctx ) 
--       end 
--     end 
    
--     function modal_window_duplicate_theme_name() 
--       r.ImGui_OpenPopup( ctx , 'ENTER DUPLICATE THEME NAME' ) 
--       if r.ImGui_BeginPopupModal( ctx , 'ENTER DUPLICATE THEME NAME' , nil , r.ImGui_WindowFlags_AlwaysAutoResize() ) then 
--         -- if not r.ImGui_IsAnyItemActive( ctx ) then r.ImGui_SetKeyboardFocusHere( ctx ) end 
--         rv , duplicate_theme_name = r.ImGui_InputText( ctx , '##duplicate_theme_name', duplicate_theme_name ) 
--         r.ImGui_Separator( ctx ) 
--         if r.ImGui_Button( ctx , 'OK' , 120 , 0 ) or r.ImGui_IsKeyPressed ( ctx , 13 ) then 
--           if not r.file_exists( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. duplicate_theme_name .. '.ReaperTheme' ) and duplicate_theme_name ~= 'ERROR: Theme already exists' then 
--             duplicate_theme( selected_theme , duplicate_theme_name )
--             duplicate_theme_name = nil 
--             r.ImGui_CloseCurrentPopup( ctx ) 
--           else
--             duplicate_theme_name = 'ERROR: Theme already exists'
--           end
--         end 
--         r.ImGui_SetItemDefaultFocus( ctx ) 
--         r.ImGui_SameLine( ctx ) 
--         if r.ImGui_Button( ctx , 'Cancel' , 120 , 0 ) then duplicate_theme_name = nil r.ImGui_CloseCurrentPopup( ctx ) end 
--         r.ImGui_EndPopup( ctx ) 
--       end 
--     end 
    
--   --

--   -- OS 

--     function delete_file( path ) 
--       if win then 
--         os.execute( 'del /f "' .. path .. '"' ) 
--       else 
--         os.execute( 'rm "' .. path .. '"' ) 
--       end 
--     end 

--     function open_file( path ) 
--       if win then 
--         os.execute( '"' .. path .. '"')
--       else 
--         os.execute( 'open "' .. path  .. '"' ) 
--       end 
--     end 

--     function copy_file( original_file , duplicate_file ) 
--       if win then 
--         os.execute('copy /y "' .. original_file .. '" "' .. duplicate_file .. '"')
--       else 
--         os.execute( 'cp "' .. original_file .. '" "' .. duplicate_file .. '"' ) 
--       end 
--     end 

--     function copy_folder( original_folder , duplicate_folder ) 
--       if win then 
--         os.execute('mkdir "' .. duplicate_folder .. '"')
--         os.execute('Xcopy "' .. original_folder .. '" "' .. duplicate_folder .. '" /e/y')
--       else 
--         os.execute( 'cp -R ' .. string.gsub( original_folder , " " , "\\ " ) .. ' ' .. string.gsub( duplicate_folder , " " , "\\ " ) .. '' ) 
--       end 
--     end

--     function delete_folder( path ) 
--       if win then 
--         os.execute( 'rd /s/q "' .. path .. '"' )
--       else 
--         os.execute( 'rm -r "' .. path .. '"' )
--         os.execute( 'rmdir  "' .. path .. '"' )
--       end 
--     end 

--     function create_folder( new_folder_path ) 
--       if win then 
--         os.execute( 'mkdir "' .. new_folder_path .. '"' )
--       else 
--         os.execute( 'mkdir "' .. new_folder_path .. '"' ) 
--       end 
--     end 

--   -- 

--   -- Paths 

--     function get_theme_folder_path( theme_file_name )   -- Returns full theme folder path 
--       for line in io.lines( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_file_name .. ".ReaperTheme" ) do
--         if string.find( line, "ui_img" ) then 
--           current_theme_folder_name = string.match( line, "=(%C*)" ) 
--         end 
--       end 

--       return string.gsub( r.GetLastColorThemeFile() , pattern_12 , current_theme_folder_name ) 
--     end 

--     function current_rtconfig_path() 
--       for line in io.lines( r.GetLastColorThemeFile() ) do 
--         if string.find( line, "ui_img" ) then 
--           current_theme_folder_name = string.match( line, "=(.+)" ) 
--           break 
--         end 
--       end 
--       return string.gsub( r.GetLastColorThemeFile() , '[^\\/]+$' , current_theme_folder_name ) .. sep .. 'rtconfig.txt' 
--     end 

--   --

--   -- Theme 

--     -- rtconfig 

--       function set_rtconfig_element_values( panel , old_element , new_element ) 

--         debug_msg( 'set_rtconfig_element_values( panel = ' .. panel .. ' , old_element = ' .. tostring( old_element ) .. ' , new_element = ' .. new_element .. ' )' ) 
--         msg()

--         -- Create Strings With Parameters to Write 

--           local element_parameters_table = {} 
--           local i = 1 
--           while r.ThemeLayout_GetParameter( i ) ~= nil do 
--             local _ , _ , val = r.ThemeLayout_GetParameter( i ) 
--             element_parameters_table[ i ] = val 
--             i = i + 1 
--           end 

--           local states      = element_parameters_table[ 1 ] 
--           local rows        = element_parameters_table[ states + 1 ] 
--           local columns     = element_parameters_table[ states + rows + 1 ] 
--           local attributes  = element_parameters_table[ columns + states + rows + 1 ] 
--           local positions   = states * rows * columns * 8 

--           debug_msg( 'states      = ' .. states .. '\n\t\t\trows        = ' .. rows .. '\n\t\t\tcolumns     = ' .. columns .. '\n\t\t\tattributes  = ' .. attributes .. '\n\t\t\tpositions   = ' .. positions )
          
--           local p = states + rows + columns + attributes + 1 
--           str = '' -- '/ ' 
--           for ii = 1 , states do -- Create string to write element position and size values to rtconfig files 
--             if ii < states then str = str .. 'state{0}=' .. string.format( "%02d" , element_parameters_table[ ii + 1 ] ) .. ' ' end 
--             for iii = 1 , rows do 
--               if iii < rows then str = str .. 'h<' .. string.format( "%04d" , element_parameters_table[ states + 1 + iii ] ) .. ' ' end 
--               for iii = 1 , columns do 
--                 if iii < columns then str = str .. 'w<' .. string.format( "%04d" , element_parameters_table[ states + rows + 1 + iii ] ) .. ' ' end 
--                 str = str .. '[ '
--                 for iiiii = 1 , 8 do 
--                   if iiiii > 4 then 
--                     str = str .. string.format( "%.2f" , element_parameters_table[ p ] / 100 ) .. ' ' 
--                   elseif iiiii > 2 then 
--                     str = str .. '0020' .. ' ' 
--                   else
--                     str = str .. string.format( "%04d" , element_parameters_table[ p ] ) .. ' ' 
--                   end 
--                   p = p + 1 
--                 end 
--                 str = str .. '] '
--               end
--             end 
--           end 
--           -- str = str .. '[1 1 1 1 100 100 100 100]' 

--           attribute_strings = {} 
--           for i = 1 , attributes - 1 do -- Create string to for writing element attributes to rtconfig file 
--             attribute_strings[ i ] = '' 
--             for ii = 1 , states do 
--               if ii < states then attribute_strings[ i ] = attribute_strings[ i ] .. 'state{0}=' .. string.format( "%02d" , element_parameters_table[ ii + 1 ] ) .. ' ' end 
--               for iii = 1 , rows do 
--                 if iii < rows then attribute_strings[ i ] = attribute_strings[ i ] .. 'h<' .. string.format( "%04d" , element_parameters_table[ states + 1 + iii ] ) .. ' ' end 
--                 for iii = 1 , columns do 
--                   if iii < columns then attribute_strings[ i ] = attribute_strings[ i ] .. 'w<' .. string.format( "%04d" , element_parameters_table[ states + rows + 1 + iii ] ) .. ' ' end 
--                   attribute_strings[ i ] = attribute_strings[ i ] .. '[ ' 
--                   for iiiii = 1 , element_parameters_table[ states + rows + columns + 1 + i ] do 
--                     attribute_strings[ i ] = attribute_strings[ i ] .. string.format( "%04d" , element_parameters_table[ p ] ) .. ' ' 
--                     p = p + 1 
--                   end 
--                   attribute_strings[ i ] = attribute_strings[ i ] .. '] ' 
--                   for iiiiii = 1 , 8 - element_parameters_table[ states + rows + columns + 1 + i ] do 
--                     attribute_strings[ i ] = attribute_strings[ i ] .. '     '  
--                   end 
--                 end
--               end 
--             end 
--           end

--         -- 


--         local file = io.open( current_rtconfig_path() , "r" ) -- Reading. 
--         local lines = {} 
--         local rest_of_file 
--         -- local line_count = 1 
--         local a = nil 
--         for line in file:lines() do -- Create table of strings to write to rtconfig 



--           if string.find( line , "^%s*set%s+" .. panel .. '.' .. new_element .. "%s+" ) then --Is this the line to modify? 


--             lines[ #lines + 1 ] , states = line:gsub( line , "state{0}=(%d%d)" ,  )

--           end


--           if string.find( line , "^%s*set%s+" .. panel .. '.' .. old_element .. "%s+" ) then --Is this the line to modify? 
--             lines[ #lines + 1 ] = string.sub( line , 1 , 50 ) .. str -- Add parameters for element position and size to table 
--             debug_msg( 'Main Element: ' .. panel .. '.' .. old_element .. ' --- ' .. string.sub( line , 1 , 50 ) .. str ) 
--             debug_msg(  ' lines[ #lines ] ' .. lines[ #lines ] ) 
--             a = 1 
--           elseif a then 
--             lines[ #lines + 1 ] = string.sub( line , 1 , 50 ) .. attribute_strings[ a ] -- Add parameters for element attributes to table 
--             debug_msg( string.sub( line , 1 , 50 ) .. attribute_strings[ a ] ) 
--             a = a + 1 
--             if a == #attribute_strings then rest_of_file = file:read( "*a" ) break end 
--           else
--               -- line_count = line_count + 1
--               lines[ #lines + 1 ] = line 
--           end 


--         end 

--         msg()

--         file:close()
--         file = io.open( current_rtconfig_path() , "w" ) --write the file.
--         for i , line in ipairs( lines ) do
--           file:write( line , "\n" )
--         end
--         file:write( rest_of_file )
--         file:close()

--       end 

--       function get_rtconfig_element_values( element ) 

--         local file = io.open( current_rtconfig_path() , "r" ) --Reading.
--         local lines = {}
--         local results = {}
  
--         for line in file:lines() do
  
--             if string.find( line , "^%s*set%s+" .. element .. "%s+" ) then --Is this the line to modify? 


  
--              for match in string.gmatch( line , "%b[]" ) do 
--               for value in string.gmatch( match , "%d" ) do 
                
--               end
--              end
  
--             end
  
--         end 

--       end 

--       function change_element_to_edit( new_element ) 

--         local file = io.open( current_rtconfig_path() , "r" ) --Reading.
--         local rtconfig_content = {}
--         local rest_of_file
--         local line_count = 1
--         for line in file:lines() do 
--             if string.find( line , "current_element" ) then --Is this the line to modify?
--                 rtconfig_content[ #rtconfig_content + 1 ] = string.sub( "^%s*set%s+" .. new_element .. '/' )
--                 rest_of_file = file:read( "*a" )
--                 break
--             else
--                 line_count = line_count + 1
--                 rtconfig_content[ #rtconfig_content + 1 ] = line
--             end 
--         end 
--         file:close()
--         file = io.open( current_rtconfig_path() , "w+" ) --write the file.
--         for i, line in ipairs( rtconfig_content ) do
--             file:write( line , "\n")
--         end
--         file:write( rest_of_file )
--         file:close()

--       end 

--       function change_current_element_to_be_edited( old_element , new_element ) 

--         -- parameters_string = ""
--         -- parameters_table = {}
--         -- local i = 1 
--         -- while r.ThemeLayout_GetParameter(i) ~= nil do
--         --   local name , description , value = r.ThemeLayout_GetParameter(i) 
--         --   parameters_string = parameters_string .. value .. " " 
--         --   parameters_table[ i ] = value 
--         --   i = i + 1 
--         --   if i > 8 then break end 
--         -- end 
    
--         -- for i = 1 , #  do 
--         --   if string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. new_element .. "%s+" ) then 
--         --     new_themeconfig_values = {} 
--         --     for value in string.gmatch( rtconfig_content_table[ i ] ,"%d+" ) do 
--         --       new_themeconfig_values[ #new_themeconfig_values + 1 ] = value 
--         --     end
--         --   end
--         -- end
    
--         -- file = io.open( current_rtconfig_path()  , 'w+' ) 
--         -- for i = 1 , #rtconfig_content_table do 
--         --   if string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. old_element .. "%s+" ) then 
    
--         --     rtconfig_content_table[ i ] = string.match( rtconfig_content_table[ i ]   ,   "^%s*set%s+[%a%.]+%s+" ) .. "[" .. parameters_string .. "]"
--         --     -- r.ShowConsoleMsg( '  set ' .. old_element .. ' [' .. parameters_string .. ']\n' )
--         --     file:write( '  set ' .. old_element .. ' [' .. parameters_string .. ']\n' ) 
    
--         --   elseif string.find(rtconfig_content_table[ i ] , "^%s*set%s+" .. new_element .. "%s+" ) then 
    
--         --     file:write( '  set ' .. new_element .. ' [name_1 name_2 name_3 name_4 ] ;current_edit_element' .. '\n' ) 
    
--         --   else
--         --     file:write( rtconfig_content_table[ i ] .. '\n' ) 
--         --   end
--         -- end
    
--         -- file:close() 
    
--         -- for i = 1 , #new_themeconfig_values do 
--         --   r.ThemeLayout_SetParameter( i , new_themeconfig_values[ i ] , true ) 
--         --   current_element_parameters_table[ i ] = new_themeconfig_values[ i ]
    
--         -- end
    
--         -- -- r.UpdateArrange()
--         -- refresh_theme()
--       end

--     -- 

--     -- Theme File 

--       function set_theme_file_value( theme_file_path, index, new_value) 

--         local hFile = io.open( theme_file_path , "r" ) --Reading.
--         local lines = {}
--         local rest_of_file
--         local line_count = 1
--         for line in hFile:lines() do
--             if string.sub(line, 1, string.len(index)) == index then --Is this the line to modify?
--                 lines[#lines + 1] = index .. new_value --Change old line into new line.
--                 rest_of_file = hFile:read("*a")
--                 break
--             else
--                 line_count = line_count + 1
--                 lines[#lines + 1] = line
--             end
--         end
--         hFile:close()
--         hFile = io.open(theme_file_path , "w") --write the file.
--         for i, line in ipairs(lines) do
--             hFile:write(line, "\n")
--         end
--         hFile:write(rest_of_file)
--         hFile:close()
--       end 
      
--     -- 

--     -- Layouts 
--     -- 

--     -- Theme Config 

--       function set_theme_config_parameters() 

--         r.ThemeLayout_SetParameter( 1  , 3 , true ) 
--         r.ThemeLayout_SetParameter( 2  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 3  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 4  , 3 , true ) 
--         r.ThemeLayout_SetParameter( 5  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 6  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 7  , 3 , true ) 
--         r.ThemeLayout_SetParameter( 8  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 9  , 2 , true ) 
--         r.ThemeLayout_SetParameter( 10 , 3 , true ) 
--         r.ThemeLayout_SetParameter( 11 , 5 , true ) 
--         r.ThemeLayout_SetParameter( 12 , 3 , true ) 
--         r.ThemeLayout_SetParameter( 13 , 5 , true ) 
--         r.ThemeLayout_SetParameter( 14 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 15 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 16 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 17 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 18 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 19 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 20 , 1 , true ) 
--         r.ThemeLayout_SetParameter( 21 , 1 , true ) 

--         for i = 22 , 3000 do 
--           r.ThemeLayout_SetParameter( i , math.random( 20 , 30 ) , true ) 
--         end
--       end 

--     --

--     -- Management 

--       function duplicate_theme( original_theme_name , new_theme_name ) 
--         local new_theme_file_path = string.gsub( r.GetLastColorThemeFile() , pattern_12 , new_theme_name ) .. ".ReaperTheme" 
--         copy_file( string.gsub( r.GetLastColorThemeFile() , pattern_12 , original_theme_name ) .. ".ReaperTheme" , new_theme_file_path ) 

--             -- r.ClearConsole()
--             -- r.ShowConsoleMsg(     tostring(     current_theme_folder_name     )  .. "test"      )
        
--         local new_theme_folder_path = r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. new_theme_name
--         local old_theme_folder_path = get_theme_folder_path( original_theme_name ) 
--         copy_folder( old_theme_folder_path, new_theme_folder_path ) 
        
--         r.OpenColorThemeFile( new_theme_file_path ) 
--         set_theme_file_value( r.GetLastColorThemeFile() , "ui_img=" , new_theme_name ) 
--         refresh_theme()
--         get_theme_list() 

--       end 

--       function delete_theme( theme_name ) 
--         local folder                    = string.match( get_theme_folder_path( theme_name ) , pattern_1 )
--         local theme_file_delete_path    = string.gsub( r.GetLastColorThemeFile() , pattern_12 , theme_name ) 
--         local theme_folder_delete_path  = string.gsub( r.GetLastColorThemeFile() , pattern_12 , folder ) 
  
--         delete_folder(  theme_folder_delete_path ) 
--         delete_file(    theme_file_delete_path .. '.ReaperTheme' ) 
--         get_theme_list() 
--       end 

--       function create_new_theme( name ) -- requires create_folder() 
    
--         create_folder( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name)
    
--         -- rtconfig 
    
--           file = io.open( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. sep .. 'rtconfig.txt' , 'w+' ) 
    
--           -- Globals
    
--             file:write(
--             ';[GLOBALS]\n' ..
--             ' version 6.0\n' ..
--             ' use_pngs 1\n' ..
--             ' use_overlays 1\n' ..
--             ' tinttcp 298\n' ..
--             ' peaksedges 0\n' ..
--             ' no_meter_reclbl 1\n' ..
--             ' envcp_min_height 29\n' ..
--             ' gen_vol_zeroline FF000000\n' ..
--             ' gen_pan_zeroline FF000000\n' ..
--             ' item_volknobfg 85000000 FF778485 00474F4F\n' ..
--             ' mcp_showborders 0\n' ..
--             ' mcp_vupeakheight 2\n' ..
--             ' mcp_mastervupeakheight 4\n' ..
--             ' mcp_altmeterpos 0\n' ..
--             ' mcp_vol_zeroline FF666666\n' ..
--             ' mcp_pan_zeroline 85000000\n' ..
--             ' mcp_min_height 240\n' ..
--             ' mcp_voltext_flags 5 5\n' ..
--             ' tcp_showborders 0\n' ..
--             ' tcp_vupeakwidth 2\n' ..
--             ' tcp_vol_zeroline FF666666\n' ..
--             ' tcp_pan_zeroline 66000000\n' ..
--             ' tcp_master_minheight 56\n' ..
--             ' tcp_voltext_flags 12\n' ..
--             ' tcp_heights 4 25 50 64  ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
--             ' tcp_heights 1 31 50 64   ; supercollapsed, collapsed, small(norecarm), recarm size\n' ..
--             ' tcp_folderindent 0\n' ..
--             ' trans_speed_zeroline 85000000\n' ..
--             ' transport_showborders 0\n' ..
--             ' misc_dpi_translate 134 150\n' ..
--             ' misc_dpi_translate 174 200\n\n' ) 
    
--           -- 
    
--           -- Define Parameters 
            
--             file:write( ';[DEFINED_PARAMETERS]\n' )
--               for i = 0, 3000 do             -- name             desc            def       min        max
--                 file:write(' define_parameter ' .. string.gsub( new_theme_name , ' ' , '_' ) .. '_' .. i .. ' desc_' .. i .. ' 0' .. ' -9999' .. ' 9999\n' ) 
--               end 
--             file:write( '\n' )
    
--           -- 
    
--           -- Macros 
    
--             file:write( ';[MACROS]\n' ) 
--             file:write( ' set selected + ?track_selected 1 0\n' ..
--                         ' set armed    + ?recarm 2 0\n' .. 
--                         ' set mixer    + ?mixer_visible 4 0\n' .. 
--                         ' set state    + + selected armed mixer\n' )
    
    
--           -- 

--           -- Colours 

--             file:write( ';[COLOURS]\n' ) 
--             file:write( ' set track_color     [ 000 000 000 255 ]\n' ..
--                         ' set black_and_white [ 000 000 000 255 ]\n' ..
--                         ' set black           [ 000 000 000 255 ]\n' ..
--                         ' set white           [ 255 255 255 255 ]\n' ..
--                         ' set red             [ 255 000 000 255 ]\n' ..
--                         ' set purple          [ 255 000 255 255 ]\n' ..
--                         ' set blue            [ 000 000 255 255 ]\n' ..
--                         ' set green           [ 000 255 000 255 ]\n' ..
--                         ' set yellow          [ 255 255 000 255 ]\n' ..
--                         ' set orange          [ 255 128 000 255 ]\n' )

--           -- 
    
--           -- Default Layout
    
--             file:write( ';[DEFAULT_LAYOUT]\n' )
    
--             for p , panel_table in pairs( main_table ) do 
--               -- file:write( ' ;[' .. p .. ']\n' ) 
    
--               for e , element_table in pairs( panel_table ) do 

--                 file:write( string.format( "%-50s" , ' set ' .. p .. '.' .. e ) .. ' [10 2 20 20 0 0 0 0]' .. '\n\t' )
                                                          
--                 for a , v in pairs( element_table[ 'attributes' ] ) do 
                  
--                   if string.len( a ) > 0 then 

--                     if  string.match( a , '%[(%a+)%]' ) == 'color' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [255 255 255 255 0 0 0 255] \n\t' ) 
--                     end

--                     if  string.match( a , '%[(%a+)%]' ) == 'div' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0 0] \n\t' ) 
--                     end

--                     if  string.match( a , '%[(%a+)%]' ) == 'margin' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0 0 0 0 .5] \n\t' ) 
--                     end

--                     if  string.match( a , '%[(%a+)%]' ) == 'font' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [1] \n\t' ) 
--                     end

--                     if  string.match( a , '%[(%a+)%]' ) == 'fadermode' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0] \n\t' ) 
--                     end

--                     if  string.match( a , '%[(%a+)%]' ) == 'mode' then 
--                       file:write( string.format( "%-50s" , '  set ' .. string.gsub( a , '%[%a+%]' , '' ) ) .. ' [0] \n\t' ) 
--                     end

--                   end 
--                 end
--               end 
--               file:write( '\n' ) 
--             end
    
--           -- 
    
--           file:close() 
              
--           msg()
--         -- 
    
--         -- .reapertheme 
    
--           file = io.open( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. '.ReaperTheme' , 'w+' )
--           file:write(
--             '[color theme]\n' ..
--             '[REAPER]\n' ..
--             'ui_img=' .. name )
--           file:close() 
    
--         -- 
    
--         r.OpenColorThemeFile( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. name .. '.ReaperTheme' ) 
--         get_theme_list() 
  
--       end 


--     -- 

--     -- Other 

--       function get_theme_list() -- Get all unzipped theme names except current one
--         theme_list_table = {} 
--         local i = -1
--         repeat
--           local theme = r.EnumerateFiles(r.GetResourcePath() .. sep .. 'ColorThemes', i )
--           if theme and string.match(theme, ".ReaperTheme$") and string.match(theme, '^[^%.]+') ~= string.match(r.GetLastColorThemeFile(), "([^" .. sep .. "]+).[Rr][Ee][Aa][Pp][Ee][Rr][Tt][Hh][Ee][Mm][Ee]$") then
--             theme = string.gsub( theme , ".ReaperTheme$" , "" ) 
--             table.insert( theme_list_table , theme ) 
--           end 
--           table.sort( theme_list_table )
--           theme_list_string = ""
--           for i = 1 , #theme_list_table do 
--             theme_list_string = theme_list_string .. theme_list_table[ i ] .. "\31" 
--           end
--           i = i + 1
--         until not theme and i > 0 
--       end 

--       function refresh_theme()
--         r.OpenColorThemeFile( r.GetLastColorThemeFile() )
--         r.UpdateArrange()
--         r.UpdateTimeline()
--       end 

--       function theme_is_zipped() --return if true or false
--         if not r.file_exists( r.GetLastColorThemeFile()) then
--             return true
--         else
--             return false
--         end
--       end 

--       function create_theme_parameters_table( element , columns , rows , states ) 

--         theme_parameters_table[ element ] = {} 

--         local parameter = 1 
--         theme_parameters_table[ element ][ states ] = {} 
--         for i = 1 , #states do 
--           theme_parameters_table[ element ][ states ][ i ] = parameter 
--           parameter = parameter + 1 
--         end 

--         local parameter = 20 
--         theme_parameters_table[ element ][ boundaries_w ] = {} 
--         for i = 1 , ( columns - 1 ) do 
--           theme_parameters_table[ element ][ boundaries_w ][ i ] = parameter 
--           parameter = parameter + 1 
--         end 
        
--         local parameter = 25 
--         theme_parameters_table[ element ][ boundaries_h ] = {} 
--         for i = 1 , ( rows - 1 ) do 
--           theme_parameters_table[ element ][ boundaries_h ][ i ] = parameter 
--           parameter = parameter + 1 
--         end 
        
--         local parameter = 30  
--         for i = 1 , rows do 
--           theme_parameters_table[ element ][ position_and_size_values ][ i ] = {} 
--           for ii = 1 , columns do 
--             theme_parameters_table[ element ][ position_and_size_values ][ i ][ ii ] = parameter 
--             parameter = parameter + 1 
--           end
--         end 
        
--       end

--     -- 

--   --  

--   -- Debug  

--     function msg() 

--       if debug_log then 
--         local str = ''
--         if current_element_parameters_x  then str = str .. 'current_element_parameters_x  = ' .. current_element_parameters_x  .. '\n'   end 
--         if current_element_parameters_y  then str = str .. 'current_element_parameters_y  = ' .. current_element_parameters_y  .. '\n'   end 
--         if current_element_parameters_w  then str = str .. 'current_element_parameters_w  = ' .. current_element_parameters_w  .. '\n'   end 
--         if current_element_parameters_h  then str = str .. 'current_element_parameters_h  = ' .. current_element_parameters_h  .. '\n'   end 
--         if current_element_parameters_ls then str = str .. 'current_element_parameters_ls = ' .. current_element_parameters_ls .. '\n'   end 
--         if current_element_parameters_ts then str = str .. 'current_element_parameters_ts = ' .. current_element_parameters_ts .. '\n'   end 
--         if current_element_parameters_rs then str = str .. 'current_element_parameters_rs = ' .. current_element_parameters_rs .. '\n'   end 
--         if current_element_parameters_bs then str = str .. 'current_element_parameters_bs = ' .. current_element_parameters_bs .. '\n\n' end 
--         if state                         then str = str .. 'state                         = ' .. state                         .. '\n\n'   end 

--         if not debug_string then debug_string = '' end 

--         file = io.open( r.GetResourcePath() .. sep .. "Scripts" .. sep .. "damo" .. sep .. "debug log - theme creator.txt", "a" ) 

--         if not new_debug then file:write( "\n\n\n*************************************************************************\n*** DEBUG LOG - " .. os.date( '%Y-%m-%d %H:%M:%S' ) .. ' ***\n*************************************************************************' ) new_debug = true end 
--         file:write( '\n' .. str .. '\n' ) 
--         file:write( debug_string ) 
--         file:write( '\n\n*************************************************************************\n\n' ) 
--         file:close() 
--       end 

--       debug_string = nil 

--     end 

--     function msg_clear() 
--       file = io.open( r.GetResourcePath() .. sep .. "Scripts" .. sep .. "damo" .. sep .. "debug log - theme creator.txt", "w+" ) 
--       file:write( '\n\n*************************************************************************\n\n' ) 
--       file:close() 
--     end 

--     function debug_msg( msg ) 
--       if debug_log then 
--         if not debug_string then debug_string = '' end 
--         debug_string = debug_string .. os.date( ' %Y-%m-%d %H:%M:%S' ) .. " - \n\t\t\t" .. msg .. "\n\n"
--       end
--     end 

--   -- 

-- -- 

-- -- START UP 

--   r.ClearConsole() 

--   get_theme_list() 
  
--   msg_clear() 
  
--   set_theme_config_parameters()

-- --

-- -- GUI 

--   -- Create Window 

--     function loop()

--       local visible , open = r.ImGui_Begin( ctx , "Theme Editor" , true , r.ImGui_WindowFlags_NoCollapse() | r.ImGui_WindowFlags_MenuBar() )

--       if visible then 

--   -- 

--   -- Menu Bar 

--     -- Create Menu

--       if r.ImGui_BeginMenuBar ( ctx ) then 

--       if r.ImGui_BeginMenu( ctx , 'Theme Management' ) then 

--     --

--     -- New Blank Theme 

--       if r.ImGui_MenuItem( ctx , 'New' )  then 
--         new_theme_name = 'New Theme' 
--       end 

--     -- 

--     -- Duplicate Theme

--       if not  theme_is_zipped() and r.ImGui_BeginMenu( ctx , 'Duplicate' ) then 

--         for i = 0 , #theme_list_table do 

--           if i == 0 then 
--             if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
--               selected_theme        = string.match( r.GetLastColorThemeFile() , pattern_12 ) 
--               duplicate_theme_name  = selected_theme
--             end 
--             r.ImGui_Separator( ctx )
--           else 
--             if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
--               selected_theme        = theme_list_table[i] 
--               duplicate_theme_name  = selected_theme
--             end 
--         end 

--         end

--         r.ImGui_EndMenu( ctx ) 
--       end 

--     --

--     -- Open Theme 
      
--       if r.ImGui_BeginMenu( ctx , 'Open' ) then 

--         for i = 1, #theme_list_table do 

--           if theme_list_table[i] == nil then break end 

--           if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 

--             r.OpenColorThemeFile( string.gsub( r.GetLastColorThemeFile() , pattern_1 , theme_list_table[i] .. ".ReaperTheme" ) )
--             get_theme_list() 

--           end 

--         end

        
--         r.ImGui_EndMenu( ctx ) 
--       end 

--     -- 

--     -- Delete Theme 

--       if r.ImGui_BeginMenu( ctx , 'Delete') then 

--         for i = 1, #theme_list_table do 
--           if theme_list_table[i] == nil then break end 
--           if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
--             rv = r.ShowMessageBox('Delete "' .. theme_list_table[i] .. '" theme?' , "" , 1 ) 
--             if rv == 1 then 
--               delete_theme( theme_list_table[i] ) 
--             end 
--           end 
--         end 

--         r.ImGui_EndMenu( ctx )
--       end 

--       r.ImGui_Separator( ctx )

--     -- 
    
--     -- Open rtconfig File 

--       if r.ImGui_BeginMenu( ctx , 'rtconfig Files' ) then 

--         for i = 0 , #theme_list_table do 

--           if i == 0 then 
--             if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
--               local folder                    = string.match( get_theme_folder_path( string.match( r.GetLastColorThemeFile() , pattern_12 ) ) , pattern_1 )
--               local folder_path  = string.gsub( r.GetLastColorThemeFile() , pattern_1 , folder ) 
--               open_file( folder_path .. sep .. "rtconfig.txt" ) 
--             end 
--             r.ImGui_Separator( ctx )
--           else 
--             if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
--               open_file( get_theme_folder_path( theme_list_table[i] ) .. sep .. "rtconfig.txt" ) 
--             end 
--         end 

--         end

--         r.ImGui_EndMenu( ctx ) 
--       end 

--     -- 

--     -- Open Theme File 

--       if r.ImGui_BeginMenu( ctx , 'Theme Files' ) then 

--         for i = 0 , #theme_list_table do 

--           if i == 0 then 
--             if r.ImGui_MenuItem( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) ) then 
--               open_file( r.GetLastColorThemeFile() ) 
--             end 
--             r.ImGui_Separator( ctx )
--           else 
--             if r.ImGui_MenuItem( ctx , theme_list_table[i] ) then 
--               open_file( r.GetResourcePath() .. sep .. 'ColorThemes' .. sep .. theme_list_table[i] .. ".ReaperTheme" ) 
--             end 
--         end 

--         end

--         r.ImGui_EndMenu( ctx ) 
--       end 

--     -- 

--     -- Open themeconfig 

--       if r.ImGui_MenuItem( ctx , 'Theme Config' ) then 
--         open_file( r.GetResourcePath() .. sep .. 'reaper-themeconfig.ini' ) 
--       end 

--     --

--     -- Refresh Theme 

--       if r.ImGui_MenuItem( ctx , 'Refresh Theme' )  then 
--         refresh_theme() 
--       end 

--     -- 

--     -- Debug Script 

--       if debug_log then  
--         if r.ImGui_MenuItem( ctx , 'Debug Script' )  then 
--           msg() 
--         end
--       end 

--     --

--     -- Test Function 

--       if r.ImGui_MenuItem( ctx , 'Function Test' )  then 
--         -- set_theme_config_parameters() 

--         set_rtconfig_element_values( 'layout' , 'tcp.recarm' )    

--       end

--     -- 

--     -- End Menu

--           r.ImGui_EndMenu( ctx ) 
--         end 

--     --

--     -- Current Theme 

--       r.ImGui_TextDisabled( ctx , '  CURRENT THEME:') ; r.ImGui_SameLine( ctx ) 
--       r.ImGui_Text( ctx , string.match( r.GetLastColorThemeFile() , pattern_12 ) )
--       if theme_is_zipped() == true then r.ImGui_SameLine( ctx ) r.ImGui_TextColored( ctx , 0xFF5555FF , ' (zipped)' ) end ; r.ImGui_SameLine( ctx ) 
    
--     -- 

--     -- End MenuBar

--       r.ImGui_EndMenuBar( ctx ) 
--       end 

--     -- 

--     -- Menu Results

--       if new_theme_name       then modal_window_new_theme_name()       end 
--       if duplicate_theme_name then modal_window_duplicate_theme_name() end 

--     -- 
--   -- 

--   -- Tab Bar 

--     -- Create Tab Bar

--       if r.ImGui_BeginTabBar( ctx , "tab_bar" ) then 

--         for i = 1 , #panel_list do 

--           if r.ImGui_BeginTabItem( ctx , string.format( "%-15s" , panel_list[ i ] ) ) then 

--             selected_panel = panel_list[ i ] 

--     -- 

--     -- Element Select Combo 

--       if not selected_elements_table[ i ] then selected_elements_table[ i ] = 0 end 
--       r.ImGui_Spacing( ctx ) 
--       r.ImGui_SetNextItemWidth( ctx , 150 ) 
--       rv , selected_elements_table[ i ] = r.ImGui_Combo( ctx , '##element_list' , selected_elements_table[ i ] , element_combo_strings_table[ i ] , 20 ) 

--       if rv then 
--         old_element = new_element
--         new_element = element_list[ i ][ selected_elements_table[ i ] + 1 ] 
--         debug_msg("\n\t\t\tSelected Panel: " .. selected_panel .. "\n\t\t\tSelected Element: " .. panel_list[ i ] .. '.' .. new_element ) 
--         set_rtconfig_element_values( panel_list[ i ] , old_element , new_element ) 
--       end 

--       r.ImGui_SameLine( ctx ) ; r.ImGui_TextWrapped( ctx , main_table[ panel_list[ i ] ][ element_list[ i ][ selected_elements_table[ i ] + 1 ] ][ 'desc' ] ) 

--     -- 

--     -- Layouts 
--     --

--     -- States 

--       r.ImGui_Spacing( ctx ) 
      
      
      
--       if r.ImGui_CollapsingHeader( ctx , 'States' ) then 
        
--         if string.find( panel_list[ i ] , 'tcp' ) or string.find( panel_list[ i ] , 'mcp' ) then 
--           rv_track_selected , track_selected = reaper.ImGui_Checkbox( ctx, "Track is Selected", track_selected ) ; r.ImGui_SameLine( ctx ) 
--           if not string.find( panel_list[ i ] , 'master' ) then 
--             rv_recarm , recarm = reaper.ImGui_Checkbox( ctx, "Track is Armed", recarm ) ; r.ImGui_SameLine( ctx ) 
--             rv_mixer_visible , mixer_visible = reaper.ImGui_Checkbox( ctx, "Mixer is Visible", mixer_visible ) 
--           end
--         end 

--         state = 0 
--         if track_selected then state = state + 1 end 
--         if recarm         then state = state + 2 end 
--         if mixer_visible  then state = state + 4 end 
--         if rv_track_selected or rv_recarm or rv_mixer_visible then debug_msg( "Changed state to: " .. state ) end 

--       end 

      

--     -- 

--     -- Boundaries 

--       r.ImGui_Spacing( ctx ) 
--       if r.ImGui_CollapsingHeader( ctx , 'Boundaries' ) then 
        
--         r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_rows ,    rows    = reaper.ImGui_SliderInt( ctx , "Rows"    , rows    , 1 , 4 ) ; r.ImGui_SameLine( ctx ) 
--         r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_columns , columns = reaper.ImGui_SliderInt( ctx , "Columns" , columns , 1 , 4 )

--       end 

--     -- 

--     -- Position, Size & Alignment 

--       r.ImGui_Spacing( ctx ) 
--       if r.ImGui_CollapsingHeader( ctx , 'Position, Size & Alignment' ) then 
        
--         r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_x  , current_element_parameters_x   = r.ImGui_DragInt( ctx , "X   " , current_element_parameters_x   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_y  , current_element_parameters_y   = r.ImGui_DragInt( ctx , "Y   " , current_element_parameters_y   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_w  , current_element_parameters_w   = r.ImGui_DragInt( ctx , "W   " , current_element_parameters_w   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_h  , current_element_parameters_h   = r.ImGui_DragInt( ctx , "H   " , current_element_parameters_h   , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_ls , current_element_parameters_ls  = r.ImGui_DragInt( ctx , "LS  " , current_element_parameters_ls  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_ts , current_element_parameters_ts  = r.ImGui_DragInt( ctx , "TS  " , current_element_parameters_ts  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_rs , current_element_parameters_rs  = r.ImGui_DragInt( ctx , "RS  " , current_element_parameters_rs  , .1 , 0 , 3999 ) ; r.ImGui_SameLine( ctx ) ; r.ImGui_SetNextItemWidth( ctx , 50 ) 
--         rv_bs , current_element_parameters_bs  = r.ImGui_DragInt( ctx , "BS  " , current_element_parameters_bs  , .1 , 0 , 3999 ) 

--         if rv_x  then r.ThemeLayout_SetParameter( 1 , current_element_parameters_x  , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_y  then r.ThemeLayout_SetParameter( 2 , current_element_parameters_y  , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_w  then r.ThemeLayout_SetParameter( 3 , current_element_parameters_w  , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_h  then r.ThemeLayout_SetParameter( 4 , current_element_parameters_h  , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_ls then r.ThemeLayout_SetParameter( 5 , current_element_parameters_ls , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_ts then r.ThemeLayout_SetParameter( 6 , current_element_parameters_ts , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_rs then r.ThemeLayout_SetParameter( 7 , current_element_parameters_rs , true ) ; r.ThemeLayout_RefreshAll() end
--         if rv_bs then r.ThemeLayout_SetParameter( 8 , current_element_parameters_bs , true ) ; r.ThemeLayout_RefreshAll() end

--       end 

--     -- 

--     -- End Tab Item 

--             r.ImGui_EndTabItem( ctx ) 
--           end 

--         end

--     --

--     -- End Tab Bar

--         r.ImGui_EndTabBar( ctx ) 
--       end 
--     --

--   -- 

--   -- Destroy 

--         r.ImGui_End( ctx ) 
--         end 

--         if open then
--           r.defer( loop )
--         else
--           r.ImGui_DestroyContext( ctx )
--         end 

--     end 

--   --

--     loop() 

-- ]]