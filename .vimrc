set nocompatible
filetype off " plugin indent on

" set vsvim_useeditordefaults " https://github.com/jaredpar/VsVim/wiki/Defaults-for-Settings

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path) " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'mhinz/vim-grepper'

Plugin 'mileszs/ack.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'https://github.com/tpope/vim-vinegar'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

Plugin 'chriskempson/base16-vim'

Plugin 'https://github.com/sjl/badwolf'

Plugin 'https://github.com/drmikehenry/vim-fontsize'

Plugin 'https://github.com/jwhitley/vim-matchit.git'

Plugin 'https://github.com/tpope/vim-surround.git'

Plugin 'https://github.com/vim-scripts/dbext.vim'

Plugin 'https://github.com/yegappan/mru'

Plugin 'https://github.com/therubymug/vim-pyte'

Plugin 'https://github.com/vim-scripts/AutoFenc'

Plugin 'https://github.com/vim-scripts/groovy.vim'

Plugin 'https://github.com/editorconfig/editorconfig-vim'

Plugin 'fatih/vim-go'

Plugin 'fsharp/vim-fsharp'

Plugin 'https://github.com/vim-scripts/vim-auto-save'

" Plugin 'junegunn/vim-peekaboo'

" Plugin 'https://github.com/lambdatoast/elm.vim'
Plugin 'https://github.com/ElmCast/elm-vim'

Plugin 'godlygeek/tabular'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'nbouscal/vim-stylish-haskell'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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



syntax on
set background=dark
"colorscheme solarized
"colorscheme base16-default
colorscheme badwolf

set ruler


set ignorecase
set backspace=indent,eol,start
set number
set hidden
set linebreak
set splitbelow
set splitright
set history=100
set noswapfile


nnoremap n nzz
nnoremap N Nzz
nnoremap Q :qa<cr>
map Y y$


set tabstop=4
set shiftwidth=4
set expandtab

if &diff
    " diff mode
    set diffopt+=iwhite
endif

set diffopt+=vertical

map Q :qa<CR>

hi diffadd ctermfg=black guifg=#000000
hi diffadd ctermbg=28 guibg=#008700
hi diffdelete ctermfg=88 guifg=#870000
hi diffdelete ctermbg=88 guibg=#870000
hi diffchange ctermbg=27 guibg=#005fff
hi difftext ctermbg=28 guibg=#008700

let g:netrw_sort_options = "i"

" silent! map <F3> :NERDTreeFind<CR>

" map <F2> :NERDTreeToggle<CR>
" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"


" nnoremap <LEADER>b :ls<CR>buffer<SPACE>
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap gw <c-w>

nnoremap <a-h> gT
nnoremap <a-l> gt

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader><tab> ddO

let g:netrw_liststyle=3

" nnoremap ; :
" nnoremap : ;

nnoremap yam ]}V%{y2<c-o>j
nnoremap dam ]}V%{d

set relativenumber

noremap <space> :

" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"
"

nnoremap <leader>t :Tabular /

au FileType elm nmap <leader>b <Plug>(elm-make)
" au FileType elm nmap <leader>m <Plug>(elm-make-main)
au FileType elm nmap <leader>m :call elm#Make("elm-src/Main.elm")<cr>
au FileType elm nmap <leader>t <Plug>(elm-test)
au FileType elm nmap <leader>r <Plug>(elm-repl)
au FileType elm nmap <leader>e <Plug>(elm-error-detail)
au FileType elm nmap <leader>d <Plug>(elm-show-docs)
au FileType elm nmap <leader>w <Plug>(elm-browse-docs)

" assuming we don't care about the output because gulp picks it up.
let g:elm_make_output_file = "/dev/null"
let g:elm_jump_to_error = 1
let g:elm_make_show_warnings = 1
let g:elm_browser_command = "cygstart %URL%"
let g:elm_detailed_complete = 1

nnoremap [q :cp<cr>
nnoremap ]q :cn<cr>

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

set autoread

let g:elm_format_autosave = 1

au BufRead,BufNewFile *.elmx setfiletype elm

" vim-grepper
nnoremap <leader>git :Grepper -tool git -noswitch<cr>
nnoremap <leader>ag  :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>*   :Grepper -tool ag -cword -noprompt<cr>

nnoremap <leader>c :ccl<cr>

" Ctrl-P - ignore files based on .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

au FileType html,php setlocal indentexpr=

nmap <down> ]qzz
nmap <up> [qzz

nmap <f1> @a
nmap <f2> @b
nmap <f3> @c

set encoding=utf-8

:nnoremap <F5> "=(strftime('%FT%T') . strpart(strftime('%z'), 0, 3) . ":00")<CR>P
:inoremap <F5> <C-R>=(strftime('%FT%T') . strpart(strftime('%z'), 0, 3) . ":00")<CR>
