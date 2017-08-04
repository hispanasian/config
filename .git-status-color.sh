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
		local color_green='\e[92m'
		local color_blue='\e[34m'
		local color_white='\e[97m'
	fi

	local git_status="$(git status 2> /dev/null)"
	local status_color="";

	# Check for untracked files
	if [ "$(git config --bool bash.showUntrackedFiles)" != "false" ] &&
	   git ls-files --others --exclude-standard --directory --no-empty-directory --error-unmatch -- ':/*' >/dev/null 2>/dev/null
	then
		status_color=$color_red
	
	# Check for changes to be committed
	elif [[ "$(git diff --shortstat 2> /dev/null | tail -n1)" != "" ]]; then
		status_color=$color_blue
	
	# Check to see if there are staged changes. At this points, all files should be tracked and committed.
	elif [[ "$(git diff --name-only --cached 2> /dev/null | tail -n1)" != "" ]]; then
		status_color=$color_green
	
	# There's nothing left. No untracked or staged files.
	else
		status_color=$color_white
	fi

	echo -e $status_color
}

