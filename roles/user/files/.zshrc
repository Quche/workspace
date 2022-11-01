# Zsh/OhMyZsh configuration
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    sudo
    gcloud
    kubectl
    kube-ps1
    )

# source $ZSH/oh-my-zsh.sh

# Google SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/quentin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/quentin/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/quentin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/quentin/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl
alias kgp="kubectl get pods"
alias kgc="kubectl get configmaps"
alias kgs="kubectl get secrets"
export KUBE_EDITOR="nano"

# GCloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/quentin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/quentin/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/quentin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/quentin/google-cloud-sdk/completion.zsh.inc'; fi
export USE_GKE_GCLOUD_AUTH_PLUGIN=True


## Generic
alias wd="cd ~/Documents/GitHub"
encode64(){ echo -n $1 | base64 -w 0 }
decode64(){ echo $1 | base64 -d }

