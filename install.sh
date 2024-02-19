#! /bin/bash

# setup
cp ./.bash_profile ~/.bash_profile
mkdir ~/scripts
cp ./add-ssh.sh ~/scripts/

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Mamba / Miniforge. potentially change the OSX version
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh -O ~/miniforge-script.sh
bash ~/miniforge-script.sh
rm ~/miniforge-script.sh
echo -e "channels:\n  - conda-forge" > .condarc
mamba init

# Git prompt
# curl -Ls https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash-git-prompt.sh
# echo '# Git bash\n. ~/.bash-git-prompt/gitprompt.sh' >> ~/.bash_profile
brew install bash-git-prompt

# Git completion
brew install git bash-completion

# Java
brew install java11 wget

# Spark
# Find the right version needed here: https://archive.apache.org/dist/spark/
export SPARK_VERSION=3.2.1
export HADOOP_VERSION=2.7
export SPARK_DIR=~/.spark/$SPARK_VERSION
mkdir -p $SPARK_DIR
wget https://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz -O $SPARK_DIR/spark.tgz
tar -xzf $SPARK_DIR/spark.tgz -C $SPARK_DIR
rm $SPARK_DIR/spark.tgz