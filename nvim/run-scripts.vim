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

	"Stop web files
	autocmd FileType html nnoremap <buffer> <leader>s
		\ :BraceyStop<CR>

	if has('macunix')
  "Execute c++ code 
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

  	"Execute java code 
		"Compile
		autocmd FileType java nnoremap <buffer> <leader>c
				\ : !mkdir build<CR>
				\ :sp<CR> :term ./.compile/compiler.sh <CR> :startinsert <CR>

		"Execute
		autocmd FileType java nnoremap <buffer> <leader>r
					\ :term ./.compile/execute.sh <CR> :startinsert <CR>
  	
	elseif has('win32')
  "Execute c++ code 
		"Complie
  	autocmd FileType cpp nnoremap <buffer> <leader>c
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -o ./build/main.exe %<CR> :startinsert <CR>
  	"Execute 
  	autocmd FileType cpp nnoremap <buffer> <leader>r
    \ :sp<CR> :term ./build/main.exe <CR> :startinsert<CR>

  	"Execute java code 
		"Compile
		autocmd FileType java nnoremap <buffer> <leader>c
				\ : !mkdir build<CR>
				\ :sp<CR> :term ./.compile/compiler.bat <CR> :startinsert <CR>

		"Execute
		autocmd FileType java nnoremap <buffer> <leader>r
					\ :term ./.compile/execute.bat <CR> :startinsert <CR>
	elseif has('unix')
  "Execute c++ code 
		"Complie
  	autocmd FileType cpp nnoremap <buffer> <leader>c
		\ : !mkdir build<CR> 
    \ :sp<CR> :term g++ -o ./build/main.app %<CR> :startinsert <CR>
  	"Execute 
  	autocmd FileType cpp nnoremap <buffer> <leader>r
    \ :sp<CR> :term ./build/main.app <CR> :startinsert<CR>

  	"Execute java code 
		"Compile
		autocmd FileType java nnoremap <buffer> <leader>c
				\ : !mkdir build<CR>
				\ :sp<CR> :term ./.compile/compiler.sh <CR> :startinsert <CR>

		"Execute
		autocmd FileType java nnoremap <buffer> <leader>r
					\ :term ./.compile/execute.sh <CR> :startinsert <CR>
	endif
augroup exe_code
