"VIM SETTINGS------------------------
" Default encoding to
set encoding=utf-8

" Remap <leader> key to someting reachable
let mapleader = ","

" Enable true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Syntax higlight
syntax on

" Line numbers
set number

" Color scheme
colorscheme solarized8_dark

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

" Tab navigation binding. Follow the vim movement bindings
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tl :tabnext<CR>
nnoremap t<RIGHT> :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap t<LEFT> :tabprev<CR>
nnoremap tn :tabnew<CR>

" Show whitespaces
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"END OF VIM SETTINGS----------------------

"DEIN SCRIPTS-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=$HOME/.nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('$HOME/.nvim/dein/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
" You can specify revision/branch/tag.
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" Replacement for syntastic.
"call dein#add('neomake/neomake')
" Syntax checker
call dein#add('scrooloose/syntastic')
" Special development icon in NERDtree and other plugins.
call dein#add('ryanoasis/vim-devicons')
" Bottom status bar.
call dein#add('vim-airline/vim-airline')
" NERDTree extension that show status of git watched file.
call dein#add('Xuyuanp/nerdtree-git-plugin')
" Filesystem browser sidebar.
call dein#add('scrooloose/nerdtree')
" Nerd tree on every tab
call dein#add('jistr/vim-nerdtree-tabs')
" Git diff inside a file.
call dein#add('airblade/vim-gitgutter')
" Plugin match xml tags
call dein#add('valloric/MatchTagAlways', {'on_ft': ['html', 'jinja', 'xml']})
" Seamless change of qoutes/brackets
call dein#add('tpope/vim-surround')
" Mostly Python tool for collapsing code sections
call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
" Fuzzy search
call dein#add('junegunn/fzf', {'dir': '~/.fzf'})
" Autocompletion for python and other languages
call dein#add('davidhalter/jedi-vim')
" Flake8 for python
call dein#add('nvie/vim-flake8')
" Snipped solution
call dein#add('SirVer/ultisnips.git')
call dein#add('honza/vim-snippets')
" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"END DEIN SCRIPTS-------------------------

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
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree setup
"Open NERDTree on console vim startup
let g:nerdtree_tabs_open_on_console_startup = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"END OF PLUGIN SETTINGS-------------------
