set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Generic plugins
Plugin 'christoomey/vim-tmux-navigator' " Tmux helper
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"
" Git
Plugin 'tpope/vim-fugitive'

" Language Plugins
" Go
Plugin 'fatih/vim-go'
" Python
Plugin 'scrooloose/syntastic'
Plugin 'tell-k/vim-autopep8'

"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required

" Turn off bell
set visualbell

" Tmux navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

let g:python_recommended_style=0
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=2 " Make backspace work

" Generic things
set relativenumber
set number
set hlsearch

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"autocmd FileType cpp,c,python,sh,javascript setlocal colorcolumn=81

map <F2> :NERDTreeToggle<CR>

let g:python_highlight_all=0

"auto-pep 8
let g:autopep8_max_line_length=81
let g:autopep8_ignore="E111,E114,E121,E125,E128,E261,E731,E402,W503"
let g:autopep8_indent_size=2
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1

"Syntastic
" E501 gets handled by auto-pep8
let g:syntastic_quiet_messages = {"regex": [
  \ "E111","E114","E121","E125","E128","E261","E731","501","W503", "E402"
  \ ]}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 0


"
" Airline setup
"set laststatus=2
"set noshowmode
"let g:airline_theme = 'behelit'
"
color delek

" Final color changes
" Syntastic Error (currently changing txt color)
hi SpellBad ctermfg=126
" Normal search highlight
hi Search ctermbg=033 ctermfg=015
