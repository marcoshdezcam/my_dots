" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" -----------------------------------------------------------------
" ---------------------- Plugin Installers ------------------------
" ----------------------------------------------------------------- {
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'mhinz/vim-startify'                 " Start menu
Plug 'vim-airline/vim-airline'            " Airline Bar
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " Fuzzy search
Plug 'junegunn/fzf.vim'
Plug 'RRethy/vim-illuminate'              " Highlight other uses of the current word
Plug 'psliwka/vim-smoothie'               " Smooth scrolling
Plug 'liuchengxu/vim-which-key'           " Show key mappings
Plug 'justinmk/vim-sneak'                 " Better text navigation
Plug 'mbbill/undotree'                    " Undo tree
Plug 'iamcco/markdown-preview.vim'        " Preview markdown files
" ------------------------------- GIT ------------------------------ {
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'             " Show signs on GIT diff
Plug 'rhysd/git-messenger.vim'            " Show commit details on floating window
" -------------------------------- GIT ----------------------------- }
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " COC - Intellisense
Plug 'sheerun/vim-polyglot'               " Syntax and indentation (Includes 'tpope/vim-sleuth')
Plug 'ryanoasis/vim-devicons'             " Dev Icons
Plug 'norcalli/nvim-colorizer.lua'        " Color highlighter
Plug 'dense-analysis/ale'                 " ALE (Asynchronous Lint Engine)
Plug 'tpope/vim-commentary'               " Comment/Uncomment code 
Plug 'ludovicchabant/vim-gutentags'       " Go-to definition (Automate c-tags creation)
Plug 'tpope/vim-surround'                 " Change sorrounding tags easily
Plug 'jiangmiao/auto-pairs'               " Auto close tags
" -------------------------- Ruby & Ruby on Rails ------------------ {
Plug 'vim-ruby/vim-ruby'                  " Ruby
Plug 'tpope/vim-rails'                    " RoR
" -------------------------- Ruby & Ruby on Rails ------------------ }
" -------------------------- Themes & Appereance ------------------- {
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'adrian5/oceanic-next-vim'
Plug 'vim-airline/vim-airline-themes'     " Airline themes
" --------------------------- Themes & Appereance ------------------ }
call plug#end()
" -----------------------------------------------------------------
" ---------------------- Plugin Installers ------------------------
" ----------------------------------------------------------------- }

" -----------------------------------------------------------------
" ---------------------- Plugin configuration ---------------------
" ----------------------------------------------------------------- {
let g:ruby_recommender_style = 1          " Ruby-settings
let g:mkdp_path_to_chrome = "/usr/bin/firefox" " Markddown preview

" ----------------------------- ALE ------------------------------- {
"  Fix on save
let g:ale_fix_on_save = 1  
" ----------------------------- ALE ------------------------------- }


" ----------------------------- FZF ------------------------------- {
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
" ----------------------------- FZF ------------------------------- }
  
"--------------------------- TrueColors --------------------------- {
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
"---------------------------- TrueColors -------------------------- }

"----------------------- Transparent background ------------------- {
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"----------------------- Transparent background ------------------- }

"------------------------------ IndentLine ------------------------ {
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
"------------------------------ IndentLine ------------------------ }

" -----------------------------------------------------------------
" ---------------------- Plugin configuration ---------------------
" ----------------------------------------------------------------- }

" -----------------------------------------------------------------
" ----------------------------- Appereance ------------------------
" ----------------------------------------------------------------- {
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

" Ayu theme tweaks
let ayucolor="mirage"

" -----------------------------------------------------------------
" ----------------------------- Appereance ------------------------
" ----------------------------------------------------------------- }
