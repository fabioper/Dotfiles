set nocompatible  " be iMproved, required
filetype off  " required
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== plugin manager
Plugin 'VundleVim/Vundle.vim'

" ==== helpers
Plugin 'vim-scripts/L9'

" ==== File tree
Plugin 'scrooloose/nerdtree'

" ==== Completion
Plugin 'Valloric/YouCompleteMe'

" ==== Wakatime
Plugin 'wakatime/vim-wakatime'

" ==== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ==== syntax helpers
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ap/vim-css-color'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'fatih/vim-go'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'moll/vim-node'
Plugin 'ruanyl/vim-fixmyjs'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'elzr/vim-json'
Plugin 'suan/vim-instant-markdown'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'


" ==== moving / searching
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'

" ==== snippets
Plugin 'SirVer/ultisnips'

" Status bar on bottom
Plugin 'bling/vim-airline'

" ==== PLUGIN THEMES
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'ajh17/spacegray.vim'
Plugin 'yuttie/inkstained-vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" ==== Colors and other basic settings
set background=dark
"set termguicolors
colorscheme onedark


let g:airline_theme='deus'

" ==== ALE
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_fix_on_save = 1

set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
" set ruler
set hidden
set number
set laststatus=2
set smartindent
"set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
" let &colorcolumn="80"
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'python']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'

" === flake8
let g:flake8_show_in_file=1

" ==== snippets
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" ==== moving around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== disable mouse
set mouse=c

" ==== disable swap file warning
set shortmess+=A

" ==== custom commands
" command JsonPretty execute ":%!python -m json.tool"
set secure
