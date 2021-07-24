call plug#begin("~/.config/nvim/plugged")
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
""Plug 'godlygeek/tabular'
""Telescope
Plug 'easymotion/vim-easymotion'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jvgrootveld/telescope-zoxide'
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
"Plug 'dbeniamine/cheat.sh-vim'
""Plug 'WolfgangMehner/bash-support'
"Plug 'dense-analysis/ale'
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-syntastic/syntastic'
""Plug 'Chiel92/vim-autoformat'
""Plug 'mvdan/sh'
"Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lyokha/vim-xkbswitch'
Plug 'tpope/vim-sensible'
Plug 'mbbill/undotree'
"ranger 
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
"------------
"Plug 'ap/vim-css-color'
call plug#end()
" General settings
" ---------------------------------------------------------------------------
"  There is some code in nvim/after/ftplugin, that can breaks smth, so you can
"  look there
let g:XkbSwitchEnabled = 1
let g:XkbSwitchNMappings = ['us']



set nocompatible
set inccommand=nosplit
syntax on
"------------------------
filetype plugin on
set autoread " reload files changed outside of Vim not currently modified in Vim (needs below)
au FocusGained,BufEnter * :silent! !  " http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
set ignorecase
set cedit =\<C-Y> "By default Ctrl+F in default mode opens COmmand line which is annoying and i dont think this mode is useful at all
set encoding=utf-8 fenc=utf-8 "fencs=iso-2022-jp,euc-jp,cp932 " use Unicode
set noshowmode
set visualbell " errors flash screen rather than emit beep
set backspace=indent,eol,start " make Backspace work like Delete
set nobackup " don't create `filename~` backups
set noswapfile " don't create temp files
set relativenumber number " line numbers and distances
set mouse=v " Enable mouse copy\paste
let mapleader=" "
set scrolloff=0 " number of lines offset when jumping
set ttyfast lazyredraw " For some reasons, vimwiki without that does strange things. When you press enter in .md file without this settings, vim goes to normal mode, then to insert mode, which is annoying
" For text wrapping. Insert linebreak when line is too big
set textwidth=0
set wrapmargin=0
set wrap
set linebreak
" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set autoindent " Indent new line the same as the preceding line
set showmatch " highlight matching parens, braces, brackets, etc
" Search settings (incsearch pluggin)
" -----------------

set autochdir " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set hidden " open new buffers without saving current modifications (buffer remains open)
"set wildmenu wildmode=list:longest,full " http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
" StatusLine always visible, display full path
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set laststatus=2 statusline=%F

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
autocmd VimEnter * silent exec "!kill -s SIGWINCH" getpid()
nnoremap Q @@
nnoremap s "_d
nnoremap ss "_dd
nnoremap S "_d$
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <leader><F5> :UndotreeToggle<CR>


