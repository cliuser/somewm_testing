--------------------------------------------------
--  ██████╗██████╗ ██╗   ██╗██╗     ██╗ █████╗  --
-- ██╔════╝██╔══██╗╚██╗ ██╔╝██║     ██║██╔══██╗ --
-- ██║     ██████╔╝ ╚████╔╝ ██║     ██║███████║ --
-- ██║     ██╔══██╗  ╚██╔╝  ██║     ██║██╔══██║ --
-- ╚██████╗██║  ██║   ██║   ███████╗██║██║  ██║ --
--  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝╚═╝  ╚═╝ --
--------------------------------------------------
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

-- Theme_path = awful.util.getdir("config") .. "/src/theme/"
local usr = require( 'src.theme.user_variables' )
Theme_path = usr.root .. '/src/theme/'
Theme = {}

dofile(Theme_path .. "/theme_variables.lua")

Theme.awesome_icon = usr.icon_dir .. 'ArchLogo.png'
Theme.awesome_subicon = usr.icon_dir .. "ArchLogo.png"

-- Wallpaper
beautiful.wallpaper = usr.wallpaper
screen.connect_signal(
  'request::wallpaper',
  function(s)
  if beautiful.wallpaper then
    if type(beautiful.wallpaper) == 'string' then
      gears.wallpaper.maximized(beautiful.wallpaper, s)
    else
      beautiful.wallpaper(s)
    end
  end
end
)

beautiful.init(Theme)
