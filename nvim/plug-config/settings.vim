" -----------------------------------------------------------------
" ---------------------- Plugin configuration --------------------- {
let g:ruby_recommender_style = 1          " Ruby-settings
let g:mkdp_path_to_chrome = "/usr/bin/firefox" " Markddown preview
" ----------------------------- KITE ------------------------------ {
let g:kite_supported_languages = ['*']
" ----------------------------- ALE ------------------------------- {
"  Fix on save
let g:ale_fix_on_save = 1  
"let g:ale_linters = {'ruby': ['rubocop'], 'eruby': ['erubi']}
"let g:ale_fixers = {'ruby': ['rubocop']}
" ----------------------------- ALE ------------------------------- }
" ----------------------------- FZF ------------------------------- {
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
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
" ---------------------- Plugin configuration ---------------------
" ----------------------------------------------------------------- }

" -----------------------------------------------------------------
" ----------------------------- Appereance ------------------------ {
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
" ----------------------------- Appereance ------------------------
" ----------------------------------------------------------------- }
