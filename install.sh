#! /bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Mamba. potentially change the OSX version
mkdir ~/.mamba
curl -Ls https://micro.mamba.pm/api/micromamba/osx-arm64/latest | tar -C ~/.mamba -xvj bin/micromamba 
echo -e "channels:\n  - conda-forge" > .condarc
~/.mamba/bin/micromamba shell init

# Git prompt
# curl -Ls https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash-git-prompt.sh
# echo '# Git bash\n. ~/.bash-git-prompt/gitprompt.sh' >> ~/.bash_profile
brew install bash-git-prompt

# Git completion
brew install git bash-completion
