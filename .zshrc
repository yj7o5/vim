# source ~/.bash_profile

export NVM_DIR="/Users/yawarjamal/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$HOME/go/bin"

# Golang
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

source /Users/yawarjamal/.config/broot/launcher/bash/br

# Default to NeoVIM
alias vim=nvim

#################################################################################
# Directory Navigation
#################################################################################
# Find and open file
alias fvim='fzf | xargs -o vim'


#################################################################################
# Docker
#################################################################################
## docker aws cli
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'


# Node Version (mute output)
nvm use 16 --silent

#################################################################################
# Directory Navigation
##################################################################################
eval $(starship init zsh)
