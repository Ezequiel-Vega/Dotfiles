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
	\ 'coc-eslint'
	\ ]
" Config syntax for lenguage
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" VUE
let g:vue_pre_processors = ['pug', 'scss', 'typescript', 'handlebars', 'HTML', 'CSS', 'JavaScript']
