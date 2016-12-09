"VIM SETTINGS------------------------
" Default encoding to
set encoding=utf-8

" Remap <leader> key to someting reachable
let mapleader=","

" Enable true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Syntax higlight
syntax on

" Line numbers
set number

" Color scheme
colorscheme solarized8_dark_high

" Highlight searches
set hlsearch
" Make search case insensitive
set ignorecase
" ... unless there is a capital letter in query
set smartcase

" Use 'g' flag by default with :s/foo/bar/ (global substitution).
set gdefault

" Indention setup compliant with PEP8 
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

" Persistant undo history
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Static python path
let g:python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.5/bin/python3.5"
let g:python2_host_prog = "/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7"

" Tab navigation binding. Follow the vim movement bindings
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tl :tabnext<CR>
nnoremap t<RIGHT> :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap t<LEFT> :tabprev<CR>
nnoremap tn :tabnew<CR>

" Moving lines up and down with mapping on mac os keystrokes
" <A-j>
nnoremap ∆ :m .+1<CR>==
" <A-k>
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Show whitespaces
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"END OF VIM SETTINGS----------------------
call plug#begin('~/.vim/plugged')

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Replacement for syntastic.
" Syntax checker
Plug 'scrooloose/syntastic'
" Special development icon in NERDtree and other plugins.
Plug 'ryanoasis/vim-devicons'
" Bottom status bar.
Plug 'vim-airline/vim-airline'
" NERDTree extension that show status of git watched file.
Plug 'Xuyuanp/nerdtree-git-plugin'
" Filesystem browser sidebar.
Plug 'scrooloose/nerdtree'
" Nerd tree on every tab
Plug 'jistr/vim-nerdtree-tabs'
" Git diff inside a file.
Plug 'airblade/vim-gitgutter'
" Plugin match xml tags
Plug 'valloric/MatchTagAlways', {'on_ft': ['html', 'jinja', 'xml']}
" Seamless change of qoutes/brackets
Plug 'tpope/vim-surround'
" Mostly Python tool for collapsing code sections
Plug 'tmhedberg/SimpylFold', {'on_ft': 'python'}
" Autocompletion for python and other languages
Plug 'davidhalter/jedi-vim'
" Flake8 for python
Plug 'nvie/vim-flake8'
" Snipped solution
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Multiple cursor support
Plug 'terryma/vim-multiple-cursors'
" Activity tracking
Plug 'wakatime/vim-wakatime'
" Fuzzy search
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()


"PLUGIN SETTINGS-----------------

" GitGutter - refresh setting
set updatetime=250

" Airline - enable special characters in powerline
let g:airline_powerline_fonts = 1

" SimpleFold - show preview of folded func/class/loop
let g:SimpylFold_docstring_preview = 1
" SimpleFold - don't fold imports
let g:SimpylFold_fold_import = 0
" SimpleFold - don't fold docstrings
let g:ocstring = 0

" JediVim - disable docstring window to popup during completion
autocmd FileType python setlocal completeopt-=preview

" Syntastic status bar setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic setting
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 3
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ['flake8']

" NERDTree setup
"Open NERDTree on console vim startup
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeShowBookmarks=1

" Snipped setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Surroundings
nnoremap <leader>s ysiw'<CR>

"END OF PLUGIN SETTINGS-------------------
"
"set rtp+=/usr/local/opt/fzf
