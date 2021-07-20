lua require("psihoz")

nnoremap <c-d> :lua require('psihoz.telescope').search_dotfiles()<CR>
nnoremap <c-h> :lua require('psihoz.telescope').search_home()<CR>
nnoremap <c-f> :lua require('telescope.builtin').find_files()<CR>
nnoremap <c-b> :lua require('telescope.builtin').buffers()<CR>
nnoremap <c-o> :lua require('telescope.builtin').oldfiles()<CR>
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>ht :lua require('telescope.builtin').help_tags()<CR>
