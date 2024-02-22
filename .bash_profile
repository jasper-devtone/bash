#load .bashrc
if [ -n "$BASH_VERSION" ]; then
# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
fi
fi

# K8s runs on minikube, these are the aliasses to run kubectl
alias k="kubectl"
alias kg="kubectl get"
alias kk="kubectl kustomize --"


# brew, used for Knative install, upgrade
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/home/jasper/.local/bin
export PATH=$PATH:/home/jasper/Documents/pycharm-community-2023.2.1/bin

#GOPATH, where go binaries are installed
export GOPATH=$(go env GOPATH)
