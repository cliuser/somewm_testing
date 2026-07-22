Awesome
=====================

Modularized statusbar with arrow theme for Awesome WM 4.x series.
![Modularized Awesome 4.x Screenshot][awesome-4x-screenshot]

[awesome-4x-screenshot]:
https://gitlab.com/epsi-rns/dotfiles/raw/master/awesome/4.3-statusbar/gentoo-awesome.png

COnfiguration
=============

awesome is /usr/bin/awesome 4.3, installed with "pacman -S aswsome".
lain and vicious were "pacman -S $iib", which put them in
/usr/share/lua/5.3. I made symlinks to get around the version problem.

Using statusbar/default. See epsi-rns tutorial[epsi-awesome-tutorial]
for details. The whole thing will take several hours to read.

[epsi-awesome-tutorial]:
https://epsi-rns.github.io/desktop/2019/06/15/awesome-overview.html

My changes
==========

All paths are relative to the dir containing rc.lua, which does NOT
have to be ~/.config/{awesome,somewm}. There are no home refereences
or "config" calls, just one os.getenv('PWD').
    - God, I love linux.

Wallpapers are in ~/wallpapers/. I run XFCE4, awesome, and somewm,
so they all need to be shared, not buried in the subdirectory tree.

Firefox icon is /usr/share/icons/hicolor/64x64/firefox.png, not local.

Testing
=======

Tested with "awmtt start -C $PWD/rc.lua.test -S 1600x900 >& msgs".
There were no errors or warnings.

"somewm-client start test --config rc.lua --host x11 -s 1600x900 --force >& msgs"
No errors.

Real exec: "somewm --config $PWD/rc.lua >& msgs"
No fatal errors, but a 30 second startup.
Warnings:
1.  invalid left_ptr (known prob w/x11)
    redglass in pacman -S xcursor-themes; system install (yay!)
    put redglass in Xresources and gtk-[[234]] settings.
    already in ~/.icons/default/index.theme:
    [[Icon Theme]]  (only one set of brackets)
    Inherit=redglass

2.  failed to get list of keyboard groups.
    Wayland uses XKB, so should be fine.
3.  mouse enter/leave signal warnings.

DONE:
=====
Deleted the Chinese window tags in main/tags.lua.

TODO:
=====

Test the other four statusbars.
Upgrade error handling to very nice persistent readable version by TBS.
