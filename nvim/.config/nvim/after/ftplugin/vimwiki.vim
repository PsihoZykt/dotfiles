au BufEnter *.wiki setl syntax=markdown
"Disable vimwiki ENTER binding "Add disabled vimwiki-enter to alt-enter, this binding expands list when you hit enter
inoremap <silent><buffer> <CR> <CR> 
inoremap <silent><buffer> <a-cr>  <C-]><Esc>:VimwikiReturn 3 5<CR> 
