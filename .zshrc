# prompt init
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/lambdageneration_mod.omp.json)"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

path+=('/Users/holmgmat/.local/bin')

killport(){ 

sudo kill -9 $(sudo fuser -n tcp $1 2> /dev/null);

}

export PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export PATH="/Users/holmgmat/.local/bin"

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
alias nvm="unalias nvm;   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"; nvm $@"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws history  zsh-autosuggestions zsh-syntax-highlighting zsh-interactive-cd macos fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
function cd {
    builtin cd "$@" && ls -laH
    }
function awslogs {
  aws --profile beelab --region "$1" logs tail --follow "$2" 
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias clr="clear"
alias reload="source ~/.zshrc && source ~/.bash_profile"
alias zshconfig="vim ~/.zshrc"
alias ll="ls -laH"
alias lt='du -sh * | sort -h'
alias ..="cd .."
alias .2="cd ../../"
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias mkdir='mkdir -pv'
alias h="history"
alias path='echo -e ${PATH//:/\\n}'
alias ping='ping -c 5'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias count='ls -1 | wc -l'
alias s='spotify'
alias sn='spotify next'
alias zz='pmset displaysleepnow'
alias myip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'
alias mycomp='system_profiler SPSoftwareDataType SPHardwareDataType'
alias kc="minikube kubectl --"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# use this for dotfiles git repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# tmux
alias tm="tmux"
alias tma="tmux attach-session"
alias tmat="tmux attach-session -t"
alias tmks="tmux kill-session -a"
alias tml="tmux list-sessions"
alias tmn="tmux new-session"
alias tmns="tmux new -s"
alias tms="tmux new-session -s"

eval "$(pyenv init -)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"


# Load Angular CLI autocompletion.
source <(ng completion script)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/holmgmat/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/holmgmat/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/holmgmat/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/holmgmat/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# =============================================================================
#
# Utility functions for zoxide.
#

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd() {
    \builtin pwd -L
}

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd() {
    # shellcheck disable=SC2164
    \builtin cd -- "$@"
}

# =============================================================================
#
# Hook configuration for zoxide.
#

# Hook to add new entries to the database.
function __zoxide_hook() {
    # shellcheck disable=SC2312
    \command zoxide add -- "$(__zoxide_pwd)"
}

# Initialize hook.
# shellcheck disable=SC2154
if [[ ${precmd_functions[(Ie)__zoxide_hook]:-} -eq 0 ]] && [[ ${chpwd_functions[(Ie)__zoxide_hook]:-} -eq 0 ]]; then
    chpwd_functions+=(__zoxide_hook)
fi

# =============================================================================
#
# When using zoxide with --no-cmd, alias these internal functions as desired.
#

__zoxide_z_prefix='z#'

# Jump to a directory using only keywords.
function __zoxide_z() {
    # shellcheck disable=SC2199
    if [[ "$#" -eq 0 ]]; then
        __zoxide_cd ~
    elif [[ "$#" -eq 1 ]] && { [[ -d "$1" ]] || [[ "$1" = '-' ]] || [[ "$1" =~ ^[-+][0-9]$ ]]; }; then
        __zoxide_cd "$1"
    elif [[ "$@[-1]" == "${__zoxide_z_prefix}"* ]]; then
        # shellcheck disable=SC2124
        \builtin local result="${@[-1]}"
        __zoxide_cd "${result:${#__zoxide_z_prefix}}"
    else
        \builtin local result
        # shellcheck disable=SC2312
        result="$(\command zoxide query --exclude "$(__zoxide_pwd)" -- "$@")" &&
            __zoxide_cd "${result}"
    fi
}

# Jump to a directory using interactive search.
function __zoxide_zi() {
    \builtin local result
    result="$(\command zoxide query -i -- "$@")" && __zoxide_cd "${result}"
}

# =============================================================================
#
# Commands for zoxide. Disable these using --no-cmd.
#

\builtin unalias z &>/dev/null || \builtin true
function z() {
    __zoxide_z "$@"
}

\builtin unalias zi &>/dev/null || \builtin true
function zi() {
    __zoxide_zi "$@"
}

if [[ -o zle ]]; then
    function __zoxide_z_complete() {
        # Only show completions when the cursor is at the end of the line.
        # shellcheck disable=SC2154
        [[ "${#words[@]}" -eq "${CURRENT}" ]] || return 0

        if [[ "${#words[@]}" -eq 2 ]]; then
            _files -/
        elif [[ "${words[-1]}" == '' ]]; then
            \builtin local result
            # shellcheck disable=SC2086,SC2312
            if result="$(\command zoxide query --exclude "$(__zoxide_pwd)" -i -- ${words[2,-1]})"; then
                result="${__zoxide_z_prefix}${result}"
                # shellcheck disable=SC2296
                compadd -Q "${(q-)result}"
            fi
            \builtin printf '\e[5n'
        fi
        return 0
    }

    \builtin bindkey '\e[0n' 'reset-prompt'
    if [[ "${+functions[compdef]}" -ne 0 ]]; then
        \compdef -d z
        \compdef -d zi
        \compdef __zoxide_z_complete z
    fi
fi

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually ~/.zshrc):
#
 eval "$(zoxide init zsh)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/holmgmat/.pyenv/versions/3.10.8/envs/neovim/bin/activate
