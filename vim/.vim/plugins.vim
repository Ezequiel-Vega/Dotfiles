call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Files
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
Plug 'leafgarland/typescript-vim'

call plug#end()
