""""""""""""""""""""""""""
"                        "
"-----------GO-----------"
"                        "
""""""""""""""""""""""""""

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1

""""""""""""""""""""""""""
"                        "
"--------NERDTree--------"
"                        "
""""""""""""""""""""""""""

" Setting NerdrTree
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let g:NERDTreeIgnore = [
	\ '^node_modules',
	\ '__pycache__',
	\ '.pytest_cache'
	\ ]

" Syntax NerdTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Disable all default file
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1

" Colors for file
let s:aqua =  "3AFFDB"
let s:light_green = "2E9E97"
let s:purple = "834F79"
let s:red = "AE403F"
let s:yellow = "F09F17"
let s:pink = "CB6F6F"
let s:green = "8FAA54"
let s:git_orange = 'F54D27'
let s:white = 'FFFFFF'
let s:blue = '586FE6'

" Enable Extensions
let g:NERDTreeSyntaxEnabledExtensions = ['py', 'js', 'css', 'html', 'ts', 'jsx', 'tsx', 'vue', 'cs']
let g:NERDTreeExtensionHighlightColor = {}

let g:NERDTreeExtensionHighlightColor['py'] = s:light_green
let g:NERDTreeExtensionHighlightColor['md'] = s:pink
let g:NERDTreeExtensionHighlightColor['yml'] = s:purple
let g:NERDTreeExtensionHighlightColor['json'] = s:green
let g:NERDTreeExtensionHighlightColor['html'] = s:red
let g:NERDTreeExtensionHighlightColor['css'] = s:aqua
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['ts'] = s:aqua
let g:NERDTreeExtensionHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreeExtensionHighlightColor['txt'] = s:white
let g:NERDTreeExtensionHighlightColor['Dockerfile'] = s:blue

"""""""""""""""""""""""""""
"                         "
"--------Ligthline--------"
"                         "
"""""""""""""""""""""""""""
au BufWritePost,TextChanged,TextChangedI * call lightline#update()

let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],[ 'relativepath', 'modified' ] ],
        \   'right': [['kitestatus'], ['gitbranch', 'filetype', 'percent', 'lineinfo']]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'FugitiveHead',
        \   'kitestatus': 'kite#statusline'
        \ },
        \ 'colorscheme': 'wombat',
        \ 'separator': {
        \       'left': '',
        \       'rigth': ''
        \ },
        \ 'subseparator': {
        \       'left': '',
        \       'rigth': ''
        \ }
        \}


""""""""""""""""""""""""""
"                        "
"---------Snipet---------"
"                        "
""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/settings/ultisnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

""""""""""""""""""""""""""
"                        "
"----------Kite----------"
"                        "
""""""""""""""""""""""""""
let g:kite_supported_languages = ['python', 'javascript']

"""""""""""""""""""""""""""
"                         "
"-----------COC-----------"
"                         "
"""""""""""""""""""""""""""
let g:coc_global_extensions = [
	\ 'coc-emmet',
	\ 'coc-json',
	\ 'coc-yaml',
	\ 'coc-prettier',
	\ 'coc-snippets',
	\ 'coc-sql',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-css',
	\ 'coc-html'
	\ ]

let g:python_highlight_all = 1

" Config syntax for lenguage
command! -nargs=0 Prettier :CocCommand prettier.formatFile

au FileType python let b:coc_suggest_disable = 1
au FileType javascript let b:coc_suggest_disable = 1
au FileType scss setl iskeyword+=@-@

"""""""""""""""""""""""""""
"                         "
"-----------FZF-----------"
"                         "
"""""""""""""""""""""""""""

let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-x': 'split',
	\ 'ctrl-v': 'vsplit' }

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'

"""""""""""""""""""""""""""
"                         "
"----------Theme----------"
"                         "
"""""""""""""""""""""""""""

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
