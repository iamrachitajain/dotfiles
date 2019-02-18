"$XDG specifications can be referred at
"https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
"This is the original file
set undodir=$XDG_CACHE_HOME/vim/undo,~/,/tmp
set directory=$XDG_CACHE_HOME/vim/swap,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim/backup,~/,/tmp
set viminfo+='1000,n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_RUNTIME_DIR/vim,$XDG_RUNTIME_DIR/vim/after,$VIMRUNTIME,~/.vim

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

call plug#end()

"To enable file type detection
filetype on
augroup Python_Rust_Settings
	"the command below execute the script for the specific filetype Python
	autocmd FileType .py source ~/dotfiles/python-settings/.python-settings.vim

	"the command below execute the script for the specific filetype Rust
	autocmd FileType r source ~/dotfiles/rust-settings/.rust-settings.vim

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

"Set code folding
set foldmethod=indent
set foldlevel=99

"enable folding with space bar
nnoremap <space> za
