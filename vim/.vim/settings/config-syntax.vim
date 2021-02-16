" COC
let g:coc_global_extensions = [
	\ 'coc-emmet', 
	\ 'coc-json', 
	\ 'coc-yaml', 
	\ 'coc-flutter', 
	\ 'coc-yaml', 
	\ 'coc-prettier', 
	\ 'coc-snippets', 
	\ 'coc-sql', 
	\ 'coc-python',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-css',
	\ 'coc-html'
	\ ]
" Config syntax for lenguage
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Python
let g:python_highlight_all = 1

" VUE
let g:vue_pre_processors = ['pug', 'scss', 'typescript', 'handlebars', 'HTML', 'CSS', 'JavaScript']
