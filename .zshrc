# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git gitfast node npm osx pip supervisor)

export EDITOR="emacs"
alias e="emacs"
[[ $EMACS = t ]] && unsetopt zle # enable zsh inside eshell
alias reload_zsh="source ~/.zshrc"
alias .reload_zsh=reload_zsh
alias .zshrc="$EDITOR ~/.zshrc"
export ANDROID_HOME=~/coding/android-sdks
alias aliases="alias -p" #print all aliases
alias .tmux="$EDITOR ~/.tmux.conf"
alias e=emacs
alias ackl="ack -i --literal"
alias .emacs="$EDITOR ~/.emacs"
alias ls="ls -G"
alias mkdir="mkdir -p" #create intermediate path for directory
alias untar="tar -zxvf"
alias pt="ps -e -o pid,command | grep"
export LSCOLORS="bx"
export LESS=-RFX
export ACKRC=".ackrc" #allow directory specific .ackrc files
export GREP_OPTIONS='-n --color=always --line-number -H -I -C 1 --exclude=*.pyc -R --exclude-dir=.git'
###How to add ssh without a password:
#`scp ~/.ssh/id_rsa.pub USER@HOST:~/.ssh/authorized_keys2`
#you might need to do `chmod 700 ~/.ssh; chmod 640 ~/.ssh/authorized_keys2` too
alias clic="ssh rds2149@clic.cs.columbia.edu"
alias cunix="ssh rds2149@cunix.cc.columbia.edu"
alias mcoder="mencoder mf://pngs/*.png -mf fps=50 -ovc lavc -lavcopts vcodec=msmpeg4v2 -oac copy -o recording.avi"
alias saveToICloud="defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool" # use this alias followed by true/false


source $ZSH/oh-my-zsh.sh

function longPrompt(){
    PROMPT_LENGTH="%~"
    setPrompt
}
function shortPrompt(){
    PROMPT_LENGTH="%1~"
    setPrompt
}
function setPrompt(){
precmd () {
    #git_branch="$(__git_ps1 "%s")"
    branch="$(current_branch)" #branch will be changed but you want to save git_branch for later

    if [[ -z $branch ]]; then
        branch="" #do nothing
    else
        git_status="$(git status 2>/dev/null)"
        
        # to add a warning for a branch, do
        # `git config --local --add branch.BRANCHNAME.editwarning true` and
        # unset with `git config --local --unset branch.BRANCHNAME.editwarning
        branch_warning="branch.$(current_branch).editwarning=true"
        hide="$(git config -l)"
        
        if [[ $hide =~ $branch_warning ]]; then
            branch="%{$bg[red]%} -- ${branch} -- %{$reset_color%}"
        else
            branch="(${branch})"
        fi
        
        if [[ $git_status =~ "Untracked files" ]]; then
            color="yellow"
        elif [[ $git_status =~ "Changes not staged for commit" ]]; then
            color="yellow"
        elif [[ $git_status =~ "Changes to be committed" ]]; then
            color="magenta"
        elif [[ $git_status =~ "Your branch is ahead" ]]; then
            color="cyan"
        elif [[ $git_status =~ "nothing to commit" ]]; then
            color="blue"
        fi
        branch=" %{$fg_no_bold[$color]%}$branch%{$reset_color%}% "
    fi

    PROMPT="%U%{$fg_no_bold[green]%}$PROMPT_LENGTH%u %{$reset_color%}%$branch $ "
}}
shortPrompt

export PATH="/usr/local/bin:/usr/local/mybin:/usr/local/sbin"
PATH=$PATH":/usr/local/mongodb/bin:/usr/local/mysql/bin"
PATH=$PATH":/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
PATH=$PATH":~/coding/android-sdks/tools:~/coding/android-sdks/platform-tools:"