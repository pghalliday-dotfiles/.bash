if [ "$TERM" != "linux" ]; then
  BASE16_SHELL="$HOME/.bash/bundle/base16-shell/base16-default.dark.sh"
  [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
fi
