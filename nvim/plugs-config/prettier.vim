command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap <leader>p :call CocAction('runCommand', 'prettier.formatFile')<CR>
