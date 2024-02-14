#! /bin/bash

# setup
cp ./.bash_profile ~/.bash_profile
mkdir ~/scripts
cp ./add-ssh.sh ~/scripts/

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Mamba. potentially change the OSX version
mkdir ~/.mamba
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh -O ~/mamba-script.sh
bash ~/mamba-script.sh
rm ~/mamba-script.sh
echo -e "channels:\n  - conda-forge" > .condarc
~/.mamba/bin/micromamba shell init

# Git prompt
# curl -Ls https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash-git-prompt.sh
# echo '# Git bash\n. ~/.bash-git-prompt/gitprompt.sh' >> ~/.bash_profile
brew install bash-git-prompt

# Git completion
brew install git bash-completion
