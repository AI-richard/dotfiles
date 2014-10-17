set autoindent
set ts=4
filetype on
filetype plugin indent on

syntax on
set nocompatible
set ignorecase
set smartcase
set hlsearch
set modelines=0
set wildmenu
set wildmode=longest:full
set nu "line numbers

"for indenting
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
vmap <Tab> >gv
vmap <S-Tab> <gv
inoremap <S-Tab> <C-D>

set lbr "word wrap
set tw=500

set si "Smart indent
set wrap "Wrap lines

"yank and paste go to a register delete and cut does not share
"noremap  d "_d
"noremap  dd "_dd
"vnoremap  d "_d
"noremap  y "-y
"noremap  Y "-Y
"noremap  p "-p
"noremap  P "-P
"vnoremap y "-y
"vnoremap Y "-Y
"vnoremap p "-p
"vnoremap P "-P

" scrolling
inoremap <C-E> <C-X><C-E> "scrolling on insert
inoremap <C-Y> <C-X><C-Y>
set scrolloff=3 " keep three lines between the cursor and the edge of the screen

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
"auto indent for brackets
inoremap {<CR> {<CR>}<Esc>O
" easier write
nmap <leader>w :w!<cr>
" easier quit
nmap <leader>q :q<cr>
" silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>
"paste from outside buffer
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>
"copy to outside buffer
vnoremap <leader>y "+y
"select all
nnoremap <leader>a ggVG
nnoremap <leader>cf :CommandTFlush<CR>
"paste from 0 register
"Useful because `d` overwrites the <quote> register
nnoremap <leader>P "0p
vnoremap <leader>P "0p

" tab navigation like firefox
"nnoremap <C-S-Tab> :tabprevious<CR>
"nnoremap <M-S-}> :tabnext<CR>

set mouse=a

" move in long lines
nnoremap k gk
nnoremap j gj

" vimslime
let g:slime_target = "tmux"
nmap <C-C><C-N> :set ft=haskell.script<CR><C-C><C-C>:set ft=haskell<CR>

" pathogen
execute pathogen#infect()

" persistent undo
if !isdirectory($HOME."/.dotfiles/vim/undodir")
    call mkdir($HOME."/.dotfiles/vim/undodir", "p")
endif

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload