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
Plug 'junegunn/goyo.vim'                  " Content on the middle of the screen
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
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'kiteco/vim-plugin'                  " Kite AI Autocomplete

" -------------------------- Ruby & Ruby on Rails ------------------ {
Plug 'vim-ruby/vim-ruby'                  " Ruby
Plug 'tpope/vim-rails'                    " RoR
Plug 'tpope/vim-rake'                     " Tools for non Rails Projects
Plug 'andrewvos/vim-ring'                 " Jump to related Rails files
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
