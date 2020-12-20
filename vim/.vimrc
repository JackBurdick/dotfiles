" plugin Directory
call plug#begin('~/.vim/plugged')

" theme
Plug 'joshdick/onedark.vim'

" directory tree
Plug 'scrooloose/nerdtree'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" fuzzy search
" Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" surround
Plug 'tpope/vim-surround'

" commenter
Plug 'preservim/nerdcommenter'

" formatter
Plug 'w0rp/ale'

" depending
" python formatter
" Plug 'ambv/black'

" autocomplete
" Plug 'zxqfl/tabnine-vim'

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

syntax on
set hlsearch
set incsearch

" indent size
set sw=4
colorscheme onedark
set nu
set fileformat=unix
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


"let g:syntastic_python_python_exec = '/home/jackburdick/anaconda3/envs/tf2/bin/python' 