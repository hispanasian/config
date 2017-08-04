# This script applies color based on the git status
# To apply, use $(__git_status_color)

__git_status_color ()
{
	if [[ -n ${ZSH_VERSION-} ]]; then
		local color_red='%F{red}'
		local color_yellow='%F{yellow}'
		local color_green='%F{green}'
		local color_blue='%F{blue}'
		local color_white='%F{white}'
	else
		local color_red='\e[31m'
		local color_yellow='\e[93m'
		local color_cyan='\e[36m'
		local color_blue='\e[34m'
		local color_white='\e[97m'
	fi

	local git_status="$(git status 2> /dev/null)"
	local status_color="";

	if [[ "$git_status" =~ "Untracked files" ]]; then
		status_color=$color_red
	elif [[ "$git_status" =~ "Changes not staged for commit" ]]; then
		status_color=$color_blue
	elif [[ "$git_status" =~ "Your branch is ahead of" ]]; then
		status_color=$color_green
	elif [[ "$git_status" =~ "nothing to commit" ]]; then
		status_color=$color_white
	else
		status_color=$color_white
	fi

	echo -e $status_color
}

