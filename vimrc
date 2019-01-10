" tockards .vimrc file inspired by
" https://rapphil.github.io/vim-python-ide/#color-themes and my broke ass for
" not affording new pycharm license
" Make sure you install jedi-vim 
" sudo pip install jedi
call plug#begin('~/.vim/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'flazz/vim-colorschemes'
    Plug 'scrooloose/nerdtree'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'w0rp/ale'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'davidhalter/jedi-vim'
    Plug 'felixhummel/setcolors.vim'
    Plug 'python-rope/ropevim'
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

" aesthetics
colorscheme slate

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" Nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" File searchs
map <C-p> :Files<CR>

" key bindings

nmap <F8> :TagbarToggle<CR>


" Ale Configuration
"""" Better formatting fo worp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%] [%...code...%]'
"""" Enable completion where available.
let g:ale_completion_enabled = 1
""" Customize linters that are turned on
let g:ale_linters = {
	\   'python': ['flake8'],
	\}
let g:ale_set_highlights = 0


" enable plugins
set statusline+=%{gutentags#statusline()}

" jedi related config
let g:jedi#auto_initialization = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_select_first = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Fix keys
set backspace=2

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
