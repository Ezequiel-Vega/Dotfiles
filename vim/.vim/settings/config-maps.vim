let mapleader = " "
:imap ii <Esc>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>f :Prettier<CR>
nmap <Leader>fp :Python3Syntax<CR>
nmap <Leader>x :bw<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>sy :SyntasticCheck<CR>
nmap <Leader>t :12Term<CR>
nmap <Leader>e :FZF<CR>
nmap <Leader>ef :FZF ~<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Key maps WinTabs
nmap <Leader>1 :WintabsGo 1<CR>
nmap <Leader>2 :WintabsGo 2<CR>
nmap <Leader>3 :WintabsGo 3<CR>
nmap <Leader>4 :WintabsGo 4<CR>
nmap <Leader>5 :WintabsGo 5<CR>
nmap <Leader>6 :WintabsGo 6<CR>
nmap <Leader>7 :WintabsGo 7<CR>
nmap <Leader>8 :WintabsGo 8<CR>
nmap <Leader>9 :WintabsGo 9<CR>

" Scroll
nmap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nmap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nmap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
nmap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" Key maps GO
au FileType go nmap <Leader>gt :GoDeclsDir<cr>
au Filetype go nmap <Leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <Leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <Leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>

" Autocompletado de parentesis, llaves, corchetes, etc.
imap (<CR> (<CR>)<Esc>O
imap ( ()<Esc>i
imap { {}<Esc>i
imap {<CR> {<CR>}<Esc>O
imap [ []<Esc>i
imap < <><Esc>i

set splitbelow

" Use autocomplete
if &filetype == "javascript" || &filetype == "python"
    imap <c-space> <C-x><C-u>
else
    imap <silent><expr> <c-space>coc#refresh()
endif
