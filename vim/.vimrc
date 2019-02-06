"$XDG specifications can be referred at
"https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
set undodir=$XDG_CACHE_HOME/vim/undo
set directory=$XDG_CACHE_HOME/vim/swap
set backupdir=$XDG_CACHE_HOME/vim/backup
set runtimepath=$XDG_RUNTIME_DIR/vim,$XDG_RUNTIME_DIR/vim/after,$VIMRUNTIME

"All Line Numbers
set number

"File Encoding
set encoding=utf-8

"Display Status Line
set laststatus=2

"Change display to use 256 colors
set t_Co=256

"Change colorscheme
colorscheme elflord
