" plugin Directory
call plug#begin('~/.vim/plugged')

" theme
Plug 'rakr/vim-one'

" jump to definition
Plug 'pechorin/any-jump.vim'

" directory tree
Plug 'scrooloose/nerdtree'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Parenthesis and quotes
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" commenter
Plug 'preservim/nerdcommenter'

" formatter
Plug 'w0rp/ale'

" python formatter
Plug 'ambv/black'
Plug 'fisadev/vim-isort'

call plug#end()


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (empty($TMUX))
"   if (has("nvim"))
"     "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"     let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"   endif
"   "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"   "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"   " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"   if (has("termguicolors"))
"     set termguicolors
"   endif
" endif

set backspace=indent,eol,start

" E501 : max line length
" E741 : Do not use variables named 'I', 'O', or 'l'
" E203 : Whitespace before ':'
" W503 : Line break occurred before a binary operator
let g:ale_python_flake8_options = '--ignore=E501,E741,E203,W503'

syntax on
set hlsearch
set incsearch

" indent size
set sw=4
" colorscheme onedark
colorscheme one
"set background=dark "dark version
set background=light "light version
set nu
set fileformat=unix
let g:airline_theme='one'
" set t_Co=256
" let g:airline_theme='base16_spacemacs'
" let g:AirlineTheme='base16_colors'
let g:gitgutter_enabled = 1

" open NERDTree if file not specified
autocmd VimEnter * if !argc() | NERDTree | endif

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }


let g:vim_isort_python_version = 'python3'
let g:ale_linters = {
	    \ 'python': ['flake8'],}


function! FPY()
    Isort
    Black
endfunction

command F :call FPY()

" iSort help
" :py3 import sys; print(sys.path)
" /usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin
" ./python3.9 -m pip install isort
