if [[ `uname` == "Darwin" ]]; then
  if [ -d "$HOME/Library/Android/sdk" ]; then
    export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
    export PATH=$PATH:$HOME/Library/Android/sdk/tools
    export ANDROID_HOME=$HOME/Library/Android/sdk
  fi
fi
