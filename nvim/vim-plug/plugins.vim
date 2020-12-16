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

" Comment/Uncomment code 
Plug 'tpope/vim-commentary'

" Useful for Go-to definition
" Automate c-tags creation
Plug 'ludovicchabant/vim-gutentags'


" -------------------------------------------- RUBY & Ruby on Rails
" Ruby
Plug 'vim-ruby/vim-ruby'

" RoR
Plug 'tpope/vim-rails'

" -------------------------------------------- RUBY & Ruby on Rails
 
" Themes & Appereance
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'adrian5/oceanic-next-vim'

" Enable transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" PLUGIN CONFIGURATION & KEY BEYNDINGS
" Ruby-settings
let g:ruby_recommender_style = 1

" Markddown preview
let g:mkdp_path_to_chrome = "/usr/bin/firefox"

" FZF 
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

"------------------------------------------- TRUE COLORS
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
"------------------------------------------- TRUE COLORS

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" Ayu theme tweaks
let ayucolor="mirage"

" OceanicNext tweaks
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

" oceanicnext tweaks
" let g:oceanic_italic_comments = 1
" let g:oceanic_for_polyglot = 1
" let g:oceanic_transparent_bg = 1

" Palenight tweaks
" let g:palenight_terminal_italics=1

" Theme
colorscheme ayu
let g:airline_theme = 'ayu'
