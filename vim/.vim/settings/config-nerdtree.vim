" Setting NerdrTree
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let g:NERDTreeIgnore = [
	\ '^node_modules',
	\ '__pycache__',
	\ '.pytest_cache'
	\ ]
let g:NERDTreeFileExtensionHighlightFullName = 1

" Colores
let s:aqua =  "3AFFDB"
let s:blue = "2E9E97"
let s:purple = "834F79"
let s:red = "AE403F"
let s:yellow = "F09F17"
let s:pink = "CB6F6F"
let s:green = "8FAA54"
let s:git_orange = 'F54D27'

" Agregar colores a los archivos
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['py'] = s:blue
let g:NERDTreeExtensionHighlightColor['md'] = s:pink
let g:NERDTreeExtensionHighlightColor['yml'] = s:purple
let g:NERDTreeExtensionHighlightColor['json'] = s:green
let g:NERDTreeExtensionHighlightColor['html'] = s:red
let g:NERDTreeExtensionHighlightColor['css'] = s:aqua
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['ts'] = s:aqua
let g:NERDTreeExtensionHighlightColor['.gitignore'] = s:git_orange
