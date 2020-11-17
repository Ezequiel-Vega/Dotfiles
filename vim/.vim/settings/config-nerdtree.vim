" Setting NerdrTree
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let g:NERDTreeIgnore = [
	\ '^node_modules',
	\ '__pycache__',
	\ '.pytest_cache'
	\ ]
let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['py', 'js', 'css', 'html', 'ts', 'jsx', 'tsx', 'vue']

" Colores
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

" Agregar colores a los archivos
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['py'] = s:light_green

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['md'] = s:pink

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['yml'] = s:purple

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['json'] = s:green

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['html'] = s:red

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['css'] = s:aqua

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['ts'] = s:aqua

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['.gitignore'] = s:git_orange

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['txt'] = s:white

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['Dockerfile'] = s:blue
