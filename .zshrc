# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Plugins
plugins=(
  git
  docker
)

# Customize to your needs...
alias cdar='cd android/app/build/outputs/apk/release'
alias rdmopen='cd ~/rdm/bin/osx/debug'
alias logcat='adb logcat | grep -F "`adb shell ps | cut -c10-15`"'
alias emu='bash ~/Desktop/emulators.sh'
alias gldago='git log --decorate --all --graph --oneline'
alias gs='git status'
alias gba='git branch -a'
alias grav='git remote -v'
alias ean='emulator -avd Nexus_5X_API_23'
alias rnra='react-native run-android'
alias rnri='react-native run-ios'
alias oas='open -a /Applications/Android\ Studio.app'
alias adbfa='adb shell setprop log.tag.FA VERBOSE; adb shell setprop log.tag.FA-SVC VERBOSE; adb logcat -v time -s FA FA-SVC;'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim
export NODE_ENV=development
export REACT_EDITOR=code

# Add adb
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=$PATH:~/Library/Android/sdk/platform-tools/:~/Library/Android/sdk/tools/:~/Downloads/j2objc-1.0.2/:/usr/local/go/bin
export PATH=$PATH:~/workspace/flutter/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export STUDIO_HOME=/Applications/Android\ Studio.app/Contents/MacOS/
export PATH=$STUDIO_HOME:$PATH
export PATH=$PATH:$HOME/.fastlane/bin
export PATH=$PATH:$HOME/flutter/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
