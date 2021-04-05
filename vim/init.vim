so ~/.vim/plugins.vim
so ~/.vim/settings/config-maps.vim
so ~/.vim/settings/config-ide.vim

set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set autoindent
set expandtab
set nowrap
set noshowmode
set termguicolors
set bg=dark
set conceallevel=1
set laststatus=2
syntax enable
colorscheme synthwave84

if !has('gui_running')
	set t_Co=256
endif
