nnoremap <leader><F5> :UndotreeToggle<CR>
set undodir=~/.config/nvim/undodir
if has("persistent_undo")
   let target_path = expand('~/.config/nvim/undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
