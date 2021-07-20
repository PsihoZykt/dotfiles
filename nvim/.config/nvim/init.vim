call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'godlygeek/tabular'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

Plug 'dbeniamine/cheat.sh-vim'
"Plug 'WolfgangMehner/bash-support'
Plug 'vim-syntastic/syntastic'
call plug#end()
" General settings
" ---------------------------------------------------------------------------
"  There is some code in nvim/after/ftplugin, that can breaks smth, so you can
"  look there
set nocompatible "Vimwiki says do it "Vimwiki says do it

" --------------- 
"  SYNTATIC ANALIZER
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"------------------------
filetype plugin on
set autoread " reload files changed outside of Vim not currently modified in Vim (needs below)
au FocusGained,BufEnter * :silent! !  " http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
set ignorecase
set cedit =\<C-Y> "By default Ctrl+F in default mode opens COmmand line which is annoying and i dont think this mode is useful at all
set encoding=utf-8 fenc=utf-8 "fencs=iso-2022-jp,euc-jp,cp932 " use Unicode
set visualbell " errors flash screen rather than emit beep
set backspace=indent,eol,start " make Backspace work like Delete
set nobackup " don't create `filename~` backups
set noswapfile " don't create temp files
set relativenumber number " line numbers and distances
set mouse=v " Enable mouse copy\paste
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
set showmode showcmd " statusline indicates insert or normal mode
set showmatch " highlight matching parens, braces, brackets, etc
" Search settings (incsearch pluggin)
" -----------------
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

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
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit! "Save file as sudo on files that require root permission
nnoremap c "_c
"Replace all is aliased to S
nnoremap S :%s//g<Left><Left>

" ---------------------
"----------------------
"=> TELESCOPE
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>





" Dissable arrow
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Disabling esc, so i can get used to using CAPS to enter normal mode
colorscheme dracula
if !empty($DISPLAY) " Disable this in TTY because these scripts use setxkbmap which is impossible in tty
 au InsertLeave * silent! !change-layout us
 au InsertEnter * silent! !change-layout us restart
endif
" Handle vim layouts
" When shortcut files are updated, renew bash and ranger configs with new material:
 autocmd BufWritePost ~/.config/shell/bm* !shortcuts 
 autocmd BufWritePost ~/.config/shell/bm* !cheatsheets_parser 
" Recompile suckless on config edit
autocmd BufWritePost ~/.local/src/dwm-flexipatch-finalized/config.h !cd ~/.local/src/dwm-flexipatch-finalized/; sudo make install && kill -HUP $(pgrep -u $USER "\bdwm$") 
autocmd BufWritePost ~/.local/src/st-flexipatch/config.h !cd ~/.local/src/st-flexipatch/; sudo make install; killall -q st;setsid -f st 
autocmd BufWritePost ~/.local/src/dmenu/config.h !cd ~/.local/src/dmenu/; sudo make install ;killall -q dmenu;setsid -f dmenu 
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install; killall -q dwmblocks; setsid -f dwmblocks;
" VimWiki
" ---------------------
"Change vimwiki syntax from .wiki to .md
let g:vimwiki_list = [{'path': '/mnt/media/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]
au BufEnter ~/vimwiki/diary/diary.md VimwikiDiaryGenerateLinks " Reload diary index when open
nnoremap <C-Space> <Plug>VimwikiToggleListItem
" --------------------
" Colors
" ---------------------------------------------------------------------------
syntax enable
" CursorLine - sometimes autocmds are not performant; turn off if so
set cursorline " http://vim.wikia.com/wiki/Highlight_current_line
" Current line highlighting
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
" ---------------------------------------------------------------------------
"
lua require 'nvim-treesitter.configs'.setup { highlight = {enable = true} }
