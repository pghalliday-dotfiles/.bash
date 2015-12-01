_formatron_complete()  {
  local commands=(
   "help"
   "completion-script"
   "provision"
   "destroy"
   "deploy"
   "generate data bag secret"
   "generate guid"
   "generate instance"
   "generate bootstrap"
   "generate credentials"
  )

  COMPREPLY=()

  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "${COMP_WORDS[1]}" == "help" ]; then
    local entered=("${COMP_WORDS[@]:2}")
    local index=$(($COMP_CWORD-2))
  else
    local entered=("${COMP_WORDS[@]:1}")
    local index=$(($COMP_CWORD-1))
  fi

  local matches=()
  for command in "${commands[@]}"; do
    local components=($command)
    if [ ${#components[@]} -ge ${#entered[@]} ]; then
      local entered_prefix=${entered[@]::$index}
      local command_prefix=${components[@]::$index}
      local component=${components[$index]}
      if [[ "${entered_prefix[@]}" == "${command_prefix[@]}" && "$component" == "$word"* ]]; then
        matches+=("$component")
      fi
    fi
  done
  local completions="${matches[@]}"

  COMPREPLY=($(compgen -W "$completions" -- "$word"))
}

complete -o default -F _formatron_complete formatron
