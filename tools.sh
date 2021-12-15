 # setup vim
if hash ln 2> /dev/null; then
    ln -s -f ~/.config/.vimrc ~/.vimrc
fi

# setup gcloud
if [ -f "$HOME/google-cloud-sdk/bin" ]; then
    PATH="$HOME/google-cloud-sdk/bin:$PATH"
fi

# setup nvm
export NVM_DIR=~/.nvm
if [ -f "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
fi
