call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'eduardoHoefel/matrix.vim'

" Files
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" GIT
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'motemen/git-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Typing
Plug 'alvan/vim-closetag'

" IDE
Plug 'sirver/ultisnips'
Plug 'terryma/vim-smooth-scroll'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'posva/vim-vue'
Plug 'vimlab/split-term.vim'
Plug 'tasn/vim-tsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-python/python-syntax'

call plug#end()
