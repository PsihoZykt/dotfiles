" поиск по 2 символам
nmap <leader><leader>s <Plug>(easymotion-overwin-f2) 
" поиск по 1 символу
nmap <leader><leader>f <Plug>(easymotion-overwin-f)
" поиск по началу каждого слова
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

" Requires incsearch
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and sometimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<c-l>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
" прыжки по словам в строке
map <Leader>l <Plug>(easymotion-lineforward) 
map <Leader>h <Plug>(easymotion-linebackward)
" прыжки по началу строк
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" ??? 
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-q> <c-w>q
nnoremap <c-b> :bd
let g:EasyMotion_smartcase = 1
