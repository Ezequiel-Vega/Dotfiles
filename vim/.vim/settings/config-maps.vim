let mapleader = " "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>f :Prettier<CR>
nmap <Leader>fp :Python3Syntax<CR>
nmap <Leader>x :bw<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>sy :SyntasticCheck<CR>
nmap <Leader>t :10Term<CR>
nmap <Leader>e :FZF<CR>
nmap <Leader>ef :FZF ~<CR>
:imap ii <Esc>

" Autocompletado de parentesis, llaves, corchetes, etc.
inoremap (<CR> (<CR>)<Esc>O
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

set splitbelow
