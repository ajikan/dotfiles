# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/anaconda3/bin:$PATH   # add anaconda3 to PATH
export PATH=~/Downloads:$PATH   # add rai to PATH
export TERM="xterm-256color"
export PATH=~/Library/Python:$PATH
export PYTHON_PATH=~/eclipse-workspace:$PYTHON_PATH
export PATH=~/eclipse-workspace:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/andrewzhang/.oh-my-zsh"
DEFAULT_USER=$USER

# Oracle Configurations
export JDK8="`ls -1 /Library/Java/JavaVirtualMachines | grep jdk1.8.0_221`"
JAVA_HOME="/Library/Java/JavaVirtualMachines/$JDK8/Contents/Home"; export JAVA_HOME
export ANT_HOME="/Users/andrewzhang/apache-ant-1.10.5"
export ANT_OPTS="-Xms256m -Xmx1536m"
export PATH=$ANT_HOME/bin:$PATH
export M2_HOME="/Applications/apache-maven-3.1.0"
export PATH=$M2_HOME/bin:$PATH
#export ORACLE_HOME="/Library/oracleclient12c"
#export PATH=$ORACLE_HOME/bin:$PATH
#export COMPUTERNAME=`hostname`


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
ZLE_RPROMPT_INDENT=0
POWERLEVEL9K_LEGACY_ICON_SPACING=true
POWERLEVEL9K_MODE='nerdfont-complete'

# Shorter Prompt (remove user@hostname)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{cyan}/%F{blue}"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_STATUS_OK=false

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir_joined
                                   dir_writable_joined)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time
                                    virtualenv_joined anaconda_joined pyenv_joined vcs_joined
                                    background_jobs_joined time_joined
                                    user_joined os_icon_joined host_joined)

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="clear"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"

POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="cyan"

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="clear"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="red"

POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

POWERLEVEL9K_TIME_FORMAT="%D{\uf073 %b %d \uf073 \uf017 %H:%M}" #  Jun 15  09:32
POWERLEVEL9K_TIME_FOREGROUND="blue"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="blue"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='magenta'

POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='clear'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='magenta'

POWERLEVEL9K_USER_DEFAULT_BACKGROUND='clear'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='cyan'
POWERLEVEL9K_USER_ROOT_BACKGROUND='clear'
POWERLEVEL9K_USER_ROOT_FOREGROUND='red'

POWERLEVEL9K_USER_ICON="\uf415" # 
POWERLEVEL9K_ROOT_ICON="\u26a1" # ⚡

POWERLEVEL9K_HOST_LOCAL_BACKGROUND='clear'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='cyan'
POWERLEVEL9K_HOST_REMOTE_BACKGROUND='clear'
POWERLEVEL9K_HOST_REMOTE_FOREGROUND='magenta'
POWERLEVEL9K_HOST_ICON="\uF109 " # 
POWERLEVEL9K_SSH_ICON="\uF489 "  # 
POWERLEVEL9K_OS_ICON_BACKGROUND="clear"
POWERLEVEL9K_OS_ICON_FOREGROUND="grey"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="clear"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="cyan"
POWERLEVEL9K_PYENV_BACKGROUND="clear"
POWERLEVEL9K_PYENV_FOREGROUND="cyan"
POWERLEVEL9K_ANACONDA_BACKGROUND="clear"
POWERLEVEL9K_ANACONDA_FOREGROUND="cyan"

# Add a space in the first prompt
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
#local user_symbol="$"
#if [[ $(print -P "%#") =~ "#" ]]; then
#    user_symbol = "#"
#fi
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# New line after each prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Change color of warning git status
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrewzhang/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrewzhang/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrewzhang/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrewzhang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f "/Users/andrewzhang/.ghcup/env" ] && source "/Users/andrewzhang/.ghcup/env" # ghcup-env
