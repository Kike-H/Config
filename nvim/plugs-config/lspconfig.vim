"lspconfig
lua << EOF
require'lspconfig'.pyright.setup {
	root_dir = function()
		return vim.fn.getcwd()
  end
}
EOF
