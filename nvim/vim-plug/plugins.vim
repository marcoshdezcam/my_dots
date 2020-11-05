" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Highlight other uses of the current word
Plug 'RRethy/vim-illuminate'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

"Show key mappings
Plug 'liuchengxu/vim-which-key'

" Better text navigation
Plug 'justinmk/vim-sneak'

" Undo tree
Plug 'mbbill/undotree'

" Preview markdown files
Plug 'iamcco/markdown-preview.vim'

" CODING
" GIT
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'       " Show signs on GIT diff
Plug 'rhysd/git-messenger.vim'      " Show commit details on floating window

" COC - Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax and indentation support (Includes 'tpope/vim-sleuth')
Plug 'sheerun/vim-polyglot'

" DEV Icons
Plug 'ryanoasis/vim-devicons'

" Color highlighter
Plug 'norcalli/nvim-colorizer.lua'

" ALE (Asynchronous Lint Engine)
Plug 'dense-analysis/ale'
 
" Ruby
Plug 'vim-ruby/vim-ruby'

" Themes & Appereance
Plug 'ayu-theme/ayu-vim'
" Enable transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" PLUGIN CONFIGURATION & KEY BEYNDINGS
" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" Ruby-settings
let g:ruby_recommender_style = 1

" Markddown preview
let g:mkdp_path_to_chrome = "/usr/bin/firefox"

" FZF 
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

" Ayu theme tweaks
set termguicolors
let ayucolor="dark"

" Theme
colorscheme ayu

