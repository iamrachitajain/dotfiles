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
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides', {'for': 'python'}
Plug 'jiangmiao/auto-pairs'
Plug 'mhartington/oceanic-next'

call plug#end()

"To enable file type detection
filetype on
augroup Python_Rust_Settings
	"the command below execute the script for the specific filetype Python
	autocmd FileType .py source ~/dotfiles/python-settings/.python-settings.vim

	"the command below execute the script for the specific filetype Rust
	autocmd FileType .rs source ~/dotfiles/rust-settings/.rust-settings.vim

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

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=blue guibg=darkred

"For extra whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"colorscheme monokai
colorscheme OceanicNext

"airline
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'"
"Tabs name formatter
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" for vim validator
let g:validator_permament_sign = 1
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
