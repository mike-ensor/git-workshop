#!/bin/sh

#
# This script will make WinMerge your default tool for diff and merge.
# It must run inside git bash (on Windows)
#

# If your WinMerge is in other place then this one, please edit
WINMERGE_SCRIPT="\"C:/Program Files (x86)/WinMerge/WinMergeU.exe\" -e -u -dl \"Local\" -dr \"Remote\" \"\$2\" \"\$3\" \"\$4\" \"\$5\""

#
# Global setup
#
git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
git config --global mergetool.keepTemporaries false

#
# Adding winmerge as a mergetool
#
git config --global merge.tool winmerge
git config --global mergetool.winmerge.name WinMerge
git config --global mergetool.winmerge.trustExitCode true
git config --global mergetool.winmerge.cmd "\"C:/Program Files (x86)/WinMerge/WinMergeU.exe\" -e -u -dl \"Local\" -dr \"Remote\" \$LOCAL \$REMOTE \$BASE \$MERGED"

#
# Adding winmerge as a difftool
#
git config --global diff.tool winmerge
git config --global difftool.winmerge.name WinMerge
git config --global difftool.winmerge.trustExitCode true
git config --global difftool.winmerge.cmd "\"C:/Program Files (x86)/WinMerge/WinMergeU.exe\" -e -u -dl \"Local\" -dr \"Remote\" \$LOCAL \$REMOTE"