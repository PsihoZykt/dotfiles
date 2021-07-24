"lua require("psihoz")
"nnoremap <leader>fd :lua require('psihoz.telescope').search_dotfiles()<CR>
"nnoremap <leader>fh :lua require('psihoz.telescope').search_home()<CR>
"nnoremap <leader>ff :lua require('telescope.builtin').find_files()<CR>
"nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
"nnoremap <leader>fo :lua require('telescope.builtin').oldfiles()<CR>
"nnoremap <leader>gs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
"nnoremap <leader>gw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"nnoremap <leader>ht :lua require('telescope.builtin').help_tags()<CR>
