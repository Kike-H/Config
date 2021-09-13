augroup exe_code
  autocmd!
	"Show in external app a file markdown 
	autocmd FileType markdown nnoremap <buffer> <leader>o
		\ :sp<CR> :term open %<CR> :q<CR>

  "Execute python code 
  autocmd FileType python nnoremap <buffer> <leader>r
    \ :CocCommand python.execInTerminal<CR> :startinsert<CR>

	"Execute web files
	autocmd FileType html nnoremap <buffer> <leader>r
		\ :Bracey<CR>

	"Execute web files
	autocmd FileType html nnoremap <buffer> <leader>s
		\ :BraceyStop<CR>

  "Execute c++ code 
	if has('macunix')
		"Complie
  	autocmd FileType cpp nnoremap <buffer> <leader>c
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -o ./build/main.out %<CR> :startinsert <CR>
  	
		autocmd FileType cpp nnoremap <buffer> <leader>d
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -g -o ./build/main.out %<CR> :startinsert <CR>
  	
		"Execute 
  	autocmd FileType cpp nnoremap <buffer> <leader>r
    \ :sp<CR> :term ./build/main.out <CR> :startinsert<CR>
	elseif has('win32')
		"Complie
  	autocmd FileType cpp nnoremap <buffer> <leader>c
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -o ./build/main.exe %<CR> :startinsert <CR>
  	"Execute 
  	autocmd FileType cpp nnoremap <buffer> <leader>r
    \ :sp<CR> :term ./build/main.exe <CR> :startinsert<CR>
	elseif has('unix')
		"Complie
  	autocmd FileType cpp nnoremap <buffer> <leader>c
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -o ./build/main.app %<CR> :startinsert <CR>
  	"Execute 
  	autocmd FileType cpp nnoremap <buffer> <leader>r
    \ :sp<CR> :term ./build/main.app <CR> :startinsert<CR>

	endif
augroup exe_code
