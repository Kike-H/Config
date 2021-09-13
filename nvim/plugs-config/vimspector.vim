" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>dd :call vimspector#Launch()<CR>
nmap <Leader>dh :call vimspector#ToggleBreakPoint()<CR>
nmap <Leader>dX :call vimspector#ClearBreakPoints()<CR>


