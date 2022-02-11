call plug#begin('~/config/nvim/plugged')

"Theme
Plug 'christianchiarulli/nvcode-color-schemes.vim' " Color scheme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesiter for the scheme
Plug 'kyazdani42/nvim-web-devicons'

"Plugs 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto-complte CoC
Plug 'preservim/nerdcommenter' "Nerd commenter
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

"Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

if has('win32') || has('win64')
  Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
else
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif

call plug#end()

"Plugs Config
source ~/Config/nvim/plugs-config/tabnine.vim "Tabnine
source ~/Config/nvim/Plugs-config/vimspector.vim "Vimspector
source ~/Config/nvim/Plugs-config/gitgutter.vim "Gitgutter
source ~/Config/nvim/Plugs-config/lspConfig.vim "lspConfig
source ~/Config/nvim/Plugs-config/nerdTree.vim " Nerde Tree
source ~/Config/nvim/Plugs-config/devicons.vim " Nerd tree icons
source ~/Config/nvim/Plugs-config/airline.vim " AirLine
source ~/Config/nvim/Plugs-config/closetag.vim "AutoClose Tag
source ~/Config/nvim/Plugs-config/tagalong.vim "AutoReanme Tag
source ~/Config/nvim/Plugs-config/ultiSnips.vim "ultiSnips
source ~/Config/nvim/Plugs-config/CoC.vim " CoC
source ~/Config/nvim/plugs-config/indent-blankLine.vim "Lines is code
source ~/Config/nvim/Plugs-config/bracey.vim "Live Server 
source ~/Config/nvim/plugs-config/nerdcommenter.vim "nerdcommenter
