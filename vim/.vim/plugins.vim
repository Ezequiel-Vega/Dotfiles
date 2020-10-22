call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" Files
Plug 'scrooloose/nerdtree'

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'posva/vim-vue'


call plug#end()
