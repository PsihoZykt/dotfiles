au BufEnter *.wiki setl syntax=markdown
"Disable vimwiki ENTER binding "Add disabled vimwiki-enter to alt-enter, this binding expands list when you hit enter
"inoremap <silent><buffer><CR> <CR> 
let g:vimwiki_list = [{'path': '/media/vimwiki/',
                    \ 'syntax': 'markdown', 'ext': '.md'}]

au BufEnter ~/vimwiki/diary/diary.md VimwikiDiaryGenerateLinks  "Reload diary index when open

autocmd FileType vimwiki inoremap <silent><buffer> <CR> <CR>
autocmd FileType vimwiki inoremap <silent><buffer> <A-CR> <Esc>:VimwikiReturn 3 5<CR>

