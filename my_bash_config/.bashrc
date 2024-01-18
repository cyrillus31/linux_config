# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


# Config a prompt
git_branch() {
  local current_branch=$(git branch --show-current 2> /dev/null )
  if [ ! -z "$current_branch" ]; then
    echo "($current_branch)"
  else
    echo ""
  fi;
}

export PS1="[\u@firstvds]\[\e[32m \w \[\e[91m\$(git_branch)\[\e[0m\n\$ "









