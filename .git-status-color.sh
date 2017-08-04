# This script applies color based on the git status
# To apply, use $(__git_status_color)

__git_status_color ()
{
	local color_red='\e[0;31m'
	local color_yellow='\e[0;33m'
	local color_green='\e[0;32m'
	local color_ochre='\e[38;5;95m'
	local color_blue='\e[0;34m'
	local color_white='\e[0;37m'
	local color_reset='\e[0m'

	local git_status="$(git status 2> /dev/null)"
	local status_color="";

	if [[ "$git_status" =~ "Untracked files" ]]; then
		status_color="$color_red"
	elif [[ "$git_status" =~ "Changes to be committed" ]]; then
		status_color="$color_green"
	elif [[ "$git_status" =~ "Your branch is ahead of" ]]; then
		git_status="$color_yellow"
	elif [[ "$git_status" =~ "nothing to commit" ]]; then
		git_status="$color_blue"
	else
		git_status="$color_ochre"
	fi

	echo -e "$status_color"
}

