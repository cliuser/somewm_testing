-- Standard awesome library
--	$Id: tags.lua,v 1.3 2026/07/22 15:04:05 sue Exp $

local awful = require("awful")

local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get ()
  local tags = {}

  local tagpairs = {
--  names  = { "term", "net", "edit", "place", 5, 6, 7, 8, 9 },
    names  = {
      "term", "net", "stat",
      "3", "4", "5", "7", "8", "9" },

    layout = {
      	-- tag 2 floating for firefox
      RC.layouts[2], RC.layouts[1], RC.layouts[2],	-- tile, float, tile
      RC.layouts[1], RC.layouts[1], RC.layouts[1],	-- float
      RC.layouts[1], RC.layouts[1], RC.layouts[1]	-- float
    }
  }

  awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tagpairs.names, s, tagpairs.layout)
  end)
  
  return tags
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable(
  {}, 
  { __call = function(_, ...) return _M.get(...) end }
)
