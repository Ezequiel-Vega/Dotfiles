call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'motemen/git-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'

call plug#end()

" Setting base
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set autoindent
set expandtab
set nowrap
set noshowmode
syntax enable

" Config syntax for lenguage
au BufNewFile, BufRead *.py
	\ set sw = 4  |
	\ set tw = 79 |

" Themes
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let t_Co=256
" Status bar
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"" Setting status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
"" Style status bar
let g:airline_theme = 'dark'
let g:airline_left_alt_sep = ' '
let g:airline_left_sep = '|'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = '|'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.readonly = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.dirty='⚡'

" IDE
let mapleader = " "
let NERDTreeQuitOnOpen = 1
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:coc_global_extensions = ['coc-emmet', 'coc-json', 'coc-yaml', 'coc-flutter', 'coc-yaml', 'coc-prettier', 'coc-snippets', 'coc-sql', 'coc-python']
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:vue_pre_processors = ['pug', 'scss', 'typescript', 'handlebars', 'HTML', 'CSS', 'JavaScript']

"" Buffer
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
nmap <Leader>b <Plug>AirlineSelectPrevTab
nmap <Leader>m <Plug>AirlineSelectNextTab

"" Shortcuts
nmap <Leader>w :w<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>sy :SyntasticCheck<CR>
:imap ii <Esc>
