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

function title_case(first, rest)
  return first:upper() .. rest:lower()
  -- Add extra characters to the pattern if you need to. _ and ' are
  --  found in the middle of identifiers and English words.
  -- We must also put %w_' into [%w_'] to make it handle normal stuff
  --  -- and extra stuff the same.
  --  -- This also turns hex numbers into, eg. 0Xa7d4
  --  str = str:gsub("(%a)([%w_']*)", tchelper)
end