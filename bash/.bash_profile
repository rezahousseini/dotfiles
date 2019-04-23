# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

export SUMATRAPDF="/cygdrive/c/Program Files/SumatraPDF/"
export PATH="$SUMATRAPDF:$PATH"

export FIREFOX="/cygdrive/c/Program Files/Mozilla Firefox/"
export PATH="$FIREFOX:$PATH"

# paths for geda
export LD_LIBRARY_PATH=$HOME/geda/lib:$LD_LIBRARY_PATH
export PATH=$HOME/geda/bin:$PATH
export PKG_CONFIG_PATH=$HOME/geda/lib/pkgconfig:$PKG_CONFIG_PATH

# path for angular
export PATH=/cygdrive/c/Users/C565614/AppData/Roaming/npm:$PATH

# path for onelab
export PATH=$HOME/lab/onelab-Windows64:$PATH
