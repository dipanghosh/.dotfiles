:set number
:set nospell
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nocompatible            " disable compatibility to old-time vi
:set showmatch               " show matching 
:set ignorecase              " case insensitive 
:set hlsearch                " highlight search 
:set incsearch               " incremental search
set clipboard=unnamedplus
set diffopt=filler,vertical

abb _3me_ Dipan Ghosh <dipandeoghar@gmail.com>
abb _date_ <C-R>=strftime("%Y-%m-%d")<CR>
" abb _py_ #!/usr/bin/env python
" abb _sh_ #!/bin/bash
comm! Pr ! python3 %

:let g:loaded_ruby_provider = 0
:let g:loaded_node_provider = 0
:let g:loaded_python_provider = 0

" Important!!
if has('termguicolors')
 set termguicolors
endif
" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
let g:gruvbox_material_background = 'medium'
" For better performance
let g:everforest_better_performance = 1
let g:gruvbox_material_better_performance = 1
"colorscheme monokai

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

set encoding=UTF-8

call plug#end()

let g:Lf_PreviewInPopup = 1
let g:Lf_ShowHidden = 1

"noremap <SPACE> <               C-F>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
"nnoremap <C-t> :split<Bar> terminal<CR>
nnoremap <tt> :TagbarToggle<CR>
nnoremap <C-s> :w<CR>
" Toggle spell checking on and off with `,s`
let mapleader = ","
"nmap <silent> <leader>s :set spell!<CR>
"nmap <F8> :TagbarToggle<CR>
nmap <F3> :Files<CR>
nmap <F12> :tabn<CR>
nmap <F10> :tabp<CR>
"imap ii <Esc>
" source $VIMRUNTIME/mswin.vim
" behave mswin

:set completeopt-=preview " For No Previews

colorscheme jellybeans

" let g:NERDTreeDirArrowExpandable="+"
" let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Enable spelunker.vim. (default: 1)
" 1: enable
" 0: disable
let g:enable_spelunker_vim = 1

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
"let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' ☰ '
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
let g:loaded_perl_provider = 0
