" vim-plug plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug '907th/vim-auto-save'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator' 
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'

call plug#end()

" general preferences
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab
set number relativenumber

" autosave
let g:auto_save = 1
"let g:auto_save_silent = 1

" themes
source $HOME/.config/nvim/themes/onedark.vim
"source $HOME/.config/nvim/themes/codedark.vim

" splits remapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" nerdtree
map <C-o> :NERDTreeToggle<CR>

" omnisharp tab completion
"

" coc.nvim
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8
