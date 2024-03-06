# --- TERMINAL THEMES START ---

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# setting up powerlevel-10k theme to start with terminal
# (requires that you shallow cloned powerlevel10k into ~)
# you also should have downloaded, installed and chosen a NerdFont with powerglyphs 
# for your font.
source ~/powerlevel10k/powerlevel10k.zsh-theme

# this is so I enable ansi terminal theme colors on 'ls' command and others
export CLICOLOR=1

# --- END TERMINAL THEMES ---

# --- SHELL PLUGINS START ---

# === zsh autosuggestions ===
# brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# keybindings
bindkey '^ ' autosuggest-execute
# bindkey '

# === zsh vim mode === 
# ok apparently this is natively supported if I just bind -v
bindkey -v
# but then to bind the jj to Esc you need this: 
bindkey -M viins 'jj' vi-cmd-mode
# and because I don't type that fast make sure that the computer doesn't give up too fast
export KEYTIMEOUT=20

# --- END SHELL PLUGINS ---

# --- PYTHON DEVELOPMENT START ---

# === UPDATING PATHS ===
# adding the homebrew python is earlier on path than system default python3
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# let's update the path to include path to miniconda's binaries first ahead of other things (assuming you still have miniconda installed)
export PATH=$HOME/miniconda3/bin:$PATH
# === END PATH UPDATES ===

# I have this to allow press and hold of vim keys in vscode but not working
# TODO maybe delete this and solve the press and hold issue
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# I'm using pyenv to manage python versions, 
# and this makes it run at terminal startup.
source ~/.aliases
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# a check to make sure that I'm using venv instead of my global interpreter. might not work because I have pyenv
export PIP_REQUIRE_VIRTUALENV="true"


# --- END PYTHON DEVELOPMENT ---
