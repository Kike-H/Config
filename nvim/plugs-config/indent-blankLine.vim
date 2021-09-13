let g:indent_blankline_indent_level = 10
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_first_indent_level = v:true

lua <<EOF
vim.opt.listchars = {
    space = ".",
		eol = "↴"
}

require("indent_blankline").setup {
  space_char_blankline = ".",
  show_current_context = true,
	show_end_of_line = true,
}
EOF
