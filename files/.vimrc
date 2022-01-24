if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" Add or remove your Bundles here:
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'

Plug 'Shougo/vimshell', { 'rev' : '3787e5' }

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvie/vim-flake8'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" osc-yank looks exactly like what I need but I can't get it to work
Plug 'ojroques/vim-oscyank'

call plug#end()

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>

" Color
colorscheme Monokai

" Tab size, tabs as spaces
set tabstop=4
set expandtab
set shiftwidth=4

" Show number lines
set number

" Clear trailing white space
autocmd BufWritePre * %s/\s\+$//e

" \1 install Plug plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" Fuzzy search hotkeys
nnoremap <C-g> :Ag<Cr>
nnoremap <C-f> :GFiles<Cr>

" Map jk and kj to esc in insert and visual mode
imap jk <Esc>
imap kj <Esc>

" Code folding with space bar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Interpret snakefiles as python syntax
autocmd BufNewFile,BufRead Snakefile set syntax=python
autocmd BufNewFile,BufRead *.snakefile set syntax=python
