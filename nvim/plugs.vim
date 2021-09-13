call plug#begin('~/config/nvim/plugged')

"Theme
Plug 'christianchiarulli/nvcode-color-schemes.vim' " Color scheme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesiter for the scheme

"Plugs 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto-complte CoC
Plug 'neovim/nvim-lspconfig' " Neovim supports the Language Server Protocol 
Plug 'townk/vim-autoclose' "Auto close 
Plug 'vim-airline/vim-airline' "Styled the bar of nvim/vim
Plug 'vim-airline/vim-airline-themes' "Themes for airline 
Plug 'scrooloose/nerdtree' " Tree interface 
Plug 'ryanoasis/vim-devicons' "Icons nerdTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "highlight nerdtree
Plug 'airblade/vim-gitgutter' "Git info
Plug 'puremourning/vimspector' "Plug for debug 
Plug 'alvan/vim-closetag' "AutoClose Tag
Plug 'AndrewRadev/tagalong.vim' "AutoReanme Tag
Plug 'sirver/ultisnips' " Snips
Plug 'honza/vim-snippets' "Default Snips
Plug 'lukas-reineke/indent-blankline.nvim' "indent Line
Plug 'turbio/bracey.vim', {'do': 'npm i --prefix server'} "Live server
Plug 'sbdchd/neoformat' "Prettier 
"Alternative Auto-complete
" Plug 'neoclide/coc-tabnine' "Auto complte tabnine
call plug#end()

"Plugs Config

source ~/config/nvim/Plugs-Config/vimspector.vim "Vimspector
source ~/config/nvim/Plugs-Config/gitgutter.vim "Gitgutter
source ~/config/nvim/Plugs-Config/lspconfig.vim "lspconfig
source ~/config/nvim/Plugs-Config/nerdTree.vim " Nerde Tree
source ~/config/nvim/Plugs-Config/devicons.vim " Nerd tree icons
source ~/config/nvim/Plugs-Config/airline.vim " AirLine
source ~/config/nvim/Plugs-Config/closetag.vim "AutoClose Tag
source ~/config/nvim/Plugs-Config/tagalong.vim "AutoReanme Tag
source ~/config/nvim/Plugs-Config/ultiSnips.vim "ultiSnips
source ~/config/nvim/Plugs-Config/CoC.vim " CoC
source ~/config/nvim/plugs-config/indent-blankLine.vim
source ~/config/nvim/Plugs-Config/bracey.vim
source ~/config/nvim/Plugs-Config/prettier.vim
