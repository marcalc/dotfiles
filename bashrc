. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
export PATH="/usr/local/mysql/bin:$PATH"

# export RUBY_HEAP_MIN_SLOTS=600000
# export RUBY_HEAP_SLOTS_INCREMENT=10000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.8
# export RUBY_GC_MALLOC_LIMIT=59000000
# export RUBY_HEAP_FREE_MIN=100000

function m {
cat ~/.sdirs | grep -v "export DIR_$1=" > ~/.sdirs1
mv ~/.sdirs1 ~/.sdirs
echo "export DIR_$1=$PWD" >> ~/.sdirs
}

# enable custom tab completion
shopt -s progcomp
# jump to bookmark
function go {
source ~/.sdirs
cd $(eval $(echo echo $(echo \$DIR_$1)))
}

# list bookmarks without dirname
function _l {
source ~/.sdirs
env | grep "^DIR_" | cut -c5- | grep "^.*=" | cut -f1 -d "="
}

# completion command for g
function _gocomp {
local curw
COMPREPLY=()
curw=${COMP_WORDS[COMP_CWORD]}
COMPREPLY=($(compgen -W '`_l`' -- $curw))
return 0
}
# bind completion command for g to _gcomp
complete -F _gocomp go
# Usage: g [TAB]
##
# Your previous /Users/marcosalcantara/.bash_profile file was backed up as /Users/marcosalcantara/.bash_profile.macports-saved_2011-04-01_at_20:04:17
##

# MacPorts Installer addition on 2011-04-01_at_20:04:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/marcosalcantara/.bash_profile file was backed up as /Users/marcosalcantara/.bash_profile.macports-saved_2011-07-25_at_11:39:09
##

# MacPorts Installer addition on 2011-07-25_at_11:39:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

