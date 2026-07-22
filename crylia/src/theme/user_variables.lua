-------------------------------------------
-- Uservariables are stored in this file --
-------------------------------------------
local dpi = require('beautiful').xresources.apply_dpi
local home = os.getenv('HOME')

-- If you want different default programs, wallpaper path or modkey; edit this file.
--	stock arch has plain awesome 4.3.
--	alpine has awesome-git, ie 4.3 plus.
--	local root = '/home/sue/crylia-theme-main/somewm/'	-- alpine vm
local root = os.getenv('PWD')
--	also vm if -d '/media/sf_vm_shared/'

return {
	root = root,
	icon_dir = root .. '/src/assets/icons/',
	scripts = root .. '/src/scripts/',
	is_vm = os.getenv('HOST') == 'alpine',

  -- Icon theme from /usr/share/icons
  icon_theme = "Papirus-Dark",

  -- Write the terminal command to start anything here
  autostart = {
--    "picom --experimental-backends"
  },

  -- Type 'ip a' and check your wlan and ethernet name
  network = {
    wlan = "wlan0",
    ethernet = "eth0"
  },

  -- Set your font with this format:
  font = {
    regular = "Input Mono Nerd Font, 14",
    bold = "Input Mono Nerd Font, Bold 14",
    extrabold = "Input Mono Nerd Font, ExtraBold 14",
    specify = "Input Mono Nerd Font"
  },

  -- This is your default Terminal
  terminal = "alacritty",

  -- This is the modkey 'mod4' = Super/Mod/WindowsKey, 'mod3' = alt...
  modkey = "Mod4",

  -- place your wallpaper at this path with this name, you could also try to change the path
  -- wallpaper = home .. "/.config/somewm/src/assets/fuji.jpg",
  wallpaper = home .. "/wallpapers/leh_6-1920.png",

  -- Naming scheme for the powermenu, userhost = "user@hostname", fullname = "Firstname Surname", something else ...
  namestyle = "userhost",

  -- List every Keyboard layout you use here comma seperated.
  -- (run localectl list-keymaps to list all averiable keymaps)
  kblayout = { "us" },

  -- Your filemanager that opens with super+e
  file_manager = "thunar",

  -- Screenshot program to make a screenshot when print is hit
  screenshot_program = "awful.screenshot",	-- or flameshot or whatever

  -- If you use the dock here is how you control its size
  dock_icon_size = dpi(50),

  -- Add your programs exactly like in this example.
  -- First entry has to be how you would start the program in the terminal (just try it if you dont know yahoo it)
  -- Second can be what ever the fuck you want it to be (will be the displayed name if you hover over it)
  -- For steam games please use this format (look in .local/share/applications for the .desktop file, that will contain the number you need)
  -- {"394360", "Name", true} true will tell the func that it's a steam game
  -- Use xprop | grep WM_CLASS and use the *SECOND* string
  -- { WM_CLASS, program, name, user_icon, isSteam }
  dock_programs = {
    { "Alacritty", "alacritty", "Alacritty" },
    { "firefox", "firefox", "Firefox" },
    { "Code", "code", "nvim" },
    { "Thunar", "thunar", "Dateien" },
  }
}
--	end
