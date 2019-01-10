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
call plug#end()

" aesthetics
colorscheme slate

" key bindings

nmap <F8> :NERDTreeToggle<CR>
nmap <F7> :TagbarToggle<CR>
nmap <F7> :TagbarToggle<CR>

" enable plugins
set statusline+=%{gutentags#statusline()}

" jedi related config
let g:jedi#auto_initialization = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_select_first = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
