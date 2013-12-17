#!/bin/sh

#
# This script will make Meld your default tool for diff and merge.
# It must run inside git bash (on Windows)
#

#
# Global setup
#
git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
git config --global mergetool.keepTemporaries false

#
# Global diff tool settings
#
git config --global difftool.conflictstyle merge

#
# Adding winmerge as a mergetool
#
git config --global merge.tool meld
git config --global mergetool.meld.name Meld
git config --global mergetool.meld.trustExitCode true
git config --global mergetool.meld.cmd "\"C:/Program Files (x86)/Meld/meld/meld.exe\" \$LOCAL \$REMOTE --output=\$MERGED"

#
# Adding winmerge as a difftool
#
git config --global diff.tool meld
git config --global difftool.meld.name Meld
git config --global difftool.meld.trustExitCode true
git config --global difftool.meld.cmd "\"C:/Program Files (x86)/Meld/meld/meld.exe\" \$LOCAL \$REMOTE"
