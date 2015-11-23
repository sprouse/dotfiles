# Path to your oh-my-zsh installation.
export ZSH=/home/ssprouse/.oh-my-zsh

is_cygwin() {
  local uname
  # Check we're running under cygwin
  uname=`uname -s`
  [[ $uname[0,6] == 'CYGWIN' ]]
}

is_not_cygwin() {
  is_cygwin
  [[ "$?" == "1" ]]
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# OLD plugins=(git)
plugins=(gitfast)

# User configuration

#Use different paths for cygwin vs. linux
if is_cygwin; then
	export PATH="/cygdrive/c/Python34:/cygdrive/c/Python34/Scripts:/cygdrive/c/Program Files/TortoiseHg:/usr/local/bin:/usr/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/Program Files (x86)/Microsoft Application Virtualization Client:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/Program Files/Collaborator Client:/cygdrive/c/Users/ssprouse/Documents/My Programs/lmtools:/cygdrive/c/Users/ssprouse/Cygwin_Home/opt/bin:/cygdrive/c/Users/ssprouse/Documents/My Programs/ffmpeg-20150519-git-d0ac2f5-win64-static/bin:~/opt/bin:/cygdrive/c/ProgramData/chocolatey/bin"
else
	export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/ssprouse/opt/bin"
fi

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias lmstat="lmutil lmstat -a -c 27111@asiclic1"
alias dh='dirs -v'
alias hi='history'
alias hg='echo "stop using hg!"'
alias ls='ls --color=auto'



#############  ESS-ARCH-Alpine Specific #############
if [ "$HOSTNAME" = "ess-arch-alpine" ]; then
    echo "This is alpine"
    alias mdstat='sudo megaraidsas-status'
    alias raidstat='sudo megaraidsas-status'
    . ~/venv/py3/bin/activate
fi

#############  HQE201826 Specific #############
if [ "$HOSTNAME" = "HQE201826" ]; then
    echo "This is HQE201826"
    eval `dircolors ~/.dir_colors/dircolors.256dark`
fi
