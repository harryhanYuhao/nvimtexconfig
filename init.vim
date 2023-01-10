filetype on " enable filetype detection
filetype plugin on " load file-specific plugins
filetype indent on " load file-specific indentation

call plug#begin()
Plug 'https://github.com/github/copilot.vim'
"Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
"Plug 'nvim-tree/nvim-tree.lua'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
call plug#end()

"Copilot disable
set number

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal = 'abdmg'

let maplocalleader="\<space>"

let g:UltiSnipsExpandTrigger = '<Tab>' " use Tap to expand snippets
let g:UltiSnipsJumpForwardTrigger = '<Tab>' " use Tap to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>' " Shift-Tap to move backwards

let g:vimtex_fold_enabled=1
set fillchars=fold:\ 
set foldlevel=2

call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})



