# somewm_testing
testing themes for somewm

Gave up on awesome-git.
somewm PKGBUILD was rock solid.

Testing various themes off the net. Major change is to make them all
relative: global PWD=os.getenv('PWD') in rc.lua and replace all the
hard-wired paths. Done to avoid polluting ~/.config/{asesome,somewm}.
