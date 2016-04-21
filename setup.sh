#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# make_link rel_path source_dir dest_dir
make_link() {
    ln -s $2/$1 $3/$1
}

#########################################
#  Bash
#########################################

BASH_IT_DIR="${HOME}/.bash_it"
if [ ! -d $BASH_IT_DIR ]; then
   git clone --depth=1 git@github.com:ntwyman/bash-it.git $BASH_IT_DIR
fi

# make_bash_link rel_path
make_bash_link() {
    make_link $1 "$DIR/bash_it" $BASH_IT_DIR
}

make_bash_link "aliases/custom.aliases.bash"
make_bash_link "completion/custom.completion.bash"
make_bash_link "custom/custom.local.bash"
make_bash_link "plugins/custom.plugins.bash"

#########################################
#  Emacs
#########################################

EMACS_D_DIR="$HOME/.emacs.d"
if [ ! -d $EMACS_D_DIR ]; then
    git clone git://github.com/bbatsov/prelude.git $EMACS_D_DIR
fi

make_emacs_link() {
    make_link $1 "$DIR/emacs.d" $EMACS_D_DIR
}

make_emacs_link "prelude-modules.el"
make_emacs_link "personal/custom.el"

#########################################
#  Misc
#########################################

ln -s $DIR/tmux.conf $HOME/.tmux.conf
ln -s $DIR/inputrc $HOME/.inputrc
