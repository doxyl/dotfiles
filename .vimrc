"useful stuff"
"you can remove ^M with :%s/\r//g. It's to do with how windows copies over to
"unix/linux"
"NERD commenter commands are in ~/.vim/docs/NERD_commenter.txt

set tabstop=4
set shiftwidth=4 "expandtab
set textwidth=80
let mapleader=","
set nowrap
set noswapfile
set backspace=indent,eol,start
"set foldmethod=marker #didn't like this
set scrolloff=5
set number
set ruler
set noerrorbells
set history=1000
set wildmenu
set wildmode=longest,list
set vb t_vb=
set fillchars+=vert:│
set list
set listchars=tab:\│\ ,
set laststatus=2
set splitright
set splitbelow
set autochdir
"set mouse=a
set completeopt=longest,menuone

" CTRL-V and SHIFT-Insert are Paste
"inoremap <C-V> <ESC>"+gp
"inoremap <S-Insert> <ESC>"+gp
"nnoremap <C-V> <ESC>"+gp
"nnoremap <S-Insert> <ESC>"+gp
"vnoremap <C-V> <ESC>"+gp
"vnoremap <S-Insert> <ESC>"+gp

" enable clipboard
set clipboard=unnamedplus
" enable pathogen
execute pathogen#infect()
" enable NERDtree
map <C-n> :NERDTreeToggle<CR>

" enable NeoComplete
"au VimEnter * NeoCompleteEnable
let g:neocomplete#enable_at_startup = 1
" enable utf8
set encoding=utf8
set termencoding=utf-8
" searching
set nohlsearch
set incsearch
set ignorecase
set smartcase
" backups
set backup
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/tmp

" statusline
set statusline= " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%m%r%w " flags
"set statusline+=[%{strlen(&ft)?&ft:'none'}, " filetype
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
"set statusline+=%{&fileformat}] " file format
set statusline+=%= " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\ " highlight
"set statusline+=%b,0x%-8B\ " current char
set statusline+=\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" return to last edit position when opening files
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal! g`\"" |
\ endif

" turn on syntax highlighting
syntax on

" Colors {{{
"--------------
set t_Co=16
colorscheme neopolitan
" }}}
