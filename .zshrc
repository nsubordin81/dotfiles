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


# --- PYTHON DEVELOPMENT START ---
# adding the homebrew python is earlier on path than system default python3
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# I have this to allow press and hold of vim keys in vscode but not working
# TODO maybe delete this and solve the press and hold issue
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# I'm using pyenv to manage python versions, 
# and this makes it run at terminal startup.
source ~/.aliases
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# --- END PYTHON DEVELOPMENT ---
