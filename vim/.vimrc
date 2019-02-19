"$XDG specifications can be referred at
"https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
"This is the original file
set undodir=$XDG_CACHE_HOME/vim/undo,~/,/tmp
set directory=$XDG_CACHE_HOME/vim/swap,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim/backup,~/,/tmp
set viminfo+='1000,n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_RUNTIME_DIR/vim,$XDG_RUNTIME_DIR/vim/after,$VIMRUNTIME,~/.vim

call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/vim-easy-align'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'shougo/neocomplete.vim'                                       
Plug 'nvie/vim-flake8', {'for': 'python'} 
Plug 'davidhalter/jedi-vim', {'for': 'python'} 

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

"Display Status Line
set laststatus=2

"Change display to use 256 colors
set t_Co=256

"Change colorscheme to dracula
"Using Dracula dark theme
colorscheme dracula

"Set code folding
set foldmethod=indent
set foldlevel=99

"enable folding with space bar
nnoremap <space> za

"show typed commands
set showcmd

"Shortcut to open nerdtree
map <C-n> :NERDTreeToggle<CR>
