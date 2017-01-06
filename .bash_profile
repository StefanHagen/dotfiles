# Bash Prompt
export PS1="\W > "

# Rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Rails Scripts
alias model="rails g model"
alias controller="rails g controller"
alias mailer="rails g mailer"
alias migration="rails g migration"
alias destroy="rails destroy"
alias rs="rails server"
alias rc="rails console"

# Rake Scripts
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:migrate"
alias rdc="bundle exec rake db:create"
alias rdca="bundle exec rake db:create:all"
alias rds="bundle exec rake db:seed"

# OSX commands
alias show='defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder'
alias hide='defaults write com.apple.Finder AppleShowAllFiles OFF && killall Finder'
