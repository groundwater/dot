function git_prompt {
  if [[ -f ~/.nogit ]]; then return; fi
  git status >/dev/null 2>&1 || return;
  [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] &&
  echo -en "• "
  echo -en $fg[red] || echo -en $fg[green]
  echo -n $(git branch 2>/dev/null | grep \* | sed 's/..//')
}

function last {
  last=$?
  if [[ $last -ne 0 ]]; then
    echo -n "🔴  "
  fi
}

PROMPT="$fg[cyan]\$(last)%n • \$(node -v) • %d \$(git_prompt) $reset_color
[%h] %m %# "

