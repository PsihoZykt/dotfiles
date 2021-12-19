call plug#begin("~/.config/nvim/plugged")
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
""Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
""Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"" ------ TREE SITTER
"Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
""---------- LSP
"Plug  'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Tags
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
"" DEBUGGING
"Plug 'puremourning/vimspector'
"" 
""-----------------
Plug 'tpope/vim-commentary'
"Plug 'dbeniamine/cheat.sh-vim'
"Plug 'WolfgangMehner/bash-support'
"Plug 'dense-analysis/ale'
"Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
"Plug 'Chiel92/vim-autoformat'
""Plug 'mvdan/sh'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lyokha/vim-xkbswitch'
"Plug 'tpope/vim-sensible'
Plug 'mbbill/undotree'
"ranger 
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' "Requires by ranger

"------------
Plug 'universal-ctags/ctags'
"Plug 'mhinz/vim-startify'
Plug 'ap/vim-css-color'
"Latex plugin
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()
" General settings
set inccommand=nosplit " for :s/ command: show in real time what will be changed and how
"------------------------
set nobackup " don't create `filename~` backups
set noswapfile " don't create temp files
set relativenumber number " line numbers and distances
set mouse=v " Enable mouse copy\paste
let mapleader=" "
set wrap
set linebreak
set hidden
set tabstop=2
set scrolloff=8

" Use system clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set clipboard=unnamedplus


" Custom remaps 
" ---------------------
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit! "Save file as sudo on files that require root permission nnoremap c "_c
"Replace all is aliased to S
nnoremap S :%s//g<Left><Left>

" ---------------------
" Dissable arrow
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" DIsabling space because it's leader key
nnoremap <SPACE> <Nop>
" Colors
" ---------------------------------------------------------------------------
colorscheme dracula
" CursorLine - sometimes autocmds are not performant; turn off if so
set cursorline " http://vim.wikia.com/wiki/Highlight_current_line
" Current line highlighting
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
" ---------------------------------------------------------------------------
"Fx for alacritty, when command "alacritty -e nvim -c <PlugCommand> doesn't work properly, so it kinda helps to fix this
"autocmd VimEnter * silent exec "!kill -s SIGWINCH" getpid()
nnoremap Q @@
nnoremap s "_d
nnoremap ss "_dd
nnoremap S "_d$
nnoremap  <silent><tab> :bn<CR>
nnoremap  <silent><s-tab> :bp<CR>
"React map: Change [=>  (JSX) ] without return,  to [=> { return (JSX) } ]
nnoremap <leader>ret :norm ysa({f{f(ireturn<CR><esc>bi<CR><CR><esc>ki
set t_Co=256
"Tex testing, remove is isn't neccesary
let g:livepreview_previewer = 'zathura'
