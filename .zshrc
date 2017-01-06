# Path to your oh-my-zsh installation.
export ZSH=/Users/stefanhagen/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dasenigma"

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
plugins=(git rake bundle ruby rails sublime brew postgres)

# User configuration

export PATH="/usr/local/var/rbenv/shims:Users/stefan/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
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

# ZShell commands
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh/.oh-my-zsh.sh"

# SSH server shortcuts
alias sshprstaging="ssh -i ~/.ssh/stefanhagen_rsa root@87.255.55.200"

# Navigational aliases
alias root="cd ~"
alias github="cd ~/Desktop/Github"
alias workbench="cd ~/Desktop/Workbench"
alias questionmark="cd ~/Desktop/Questionmark"

# Git aliases
alias gitlog="glol"

# Rails
alias model="rails g model"
alias controller="rails g controller"
alias mailer="rails g mailer"
alias migration="rails g migration"
alias destroy="rails destroy"
alias rs="rails server"
alias rc="rails console"

# Rake
alias rdm="bundle exec rake db:migrate"
alias rdc="bundle exec rake db:create"
alias rdca="bundle exec rake db:create:all"
alias rds="bundle exec rake db:seed"

# OSX
alias show="defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles OFF && killall Finder"

function grepv(){
	vim $(grep -irl "$*" .)
}

# # Function to display available color spectrum
function spectrum_ls() {
	for code in {000..255}; do
		print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
 	done
 }
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/var/rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export NVM_DIR="/Users/stefanhagen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
