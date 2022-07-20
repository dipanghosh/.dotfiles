alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias python=python3
alias nn='nvim docker-compose.yml'
alias dup='docker-compose up'
alias ddown='docker-compose down --remove-orphans'
alias dreup='docker-compose down --remove-orphans && docker-compose up --force-recreate'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

