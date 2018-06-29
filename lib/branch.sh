# function to get the git branch for display in PS1
# in your .bashrc:
#   source ~/git/lib/branch.sh
#   BRANCH="$(git_branch)"
#   PS1="$Grey\t $Cyan\u$Grey@$Green\h$Grey:$Red\w$Yellow$BRANCH$White \$ $Reset"

function parse_git_dirty {
    [[ "$(git status 2> /dev/null | tail -n1)" != "nothing to commit (working directory clean)" ]] && echo "*"
}

function git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \(\1$(parse_git_dirty)\)/"
}

