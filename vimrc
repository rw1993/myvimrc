set nu
set autoindent
set tabstop=4
set shiftwidth=4
set cindent
set smartindent
set expandtab
autocmd FileType python setlocal et | setl sta | setl sw=4 | setl tw=76

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'ianva/vim-youdao-translater'
Plugin 'mattn/invader-vim'
Plugin 'AshyIsMe/2048'
Plugin 'vim-game-of-life'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'amoffat/snake'
call vundle#end()            " required
filetype plugin on

"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20
nmap <F8> :TagbarToggle<CR>
map  <F6> :NERDTreeToggle<CR>
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
