if exists('g:vscode')
    set autoread
    set backspace=indent,eol,start
    set cursorline
    set encoding=utf-8
    set expandtab
    set hidden
    set history=100
    set ignorecase
    set linebreak
    set noeb vb t_vb=
    set noswapfile
    set number
    set relativenumber
    set shiftwidth=4
    set splitbelow
    set splitright
    set tabstop=4

    noremap <space> :
    nnoremap n nzz
    nnoremap N Nzz
    nnoremap Q :qa<cr>
    map Y y$


    map Q :qa<CR>
    let g:netrw_sort_options = "i"
    nnoremap [q :cp<cr>
    nnoremap ]q :cn<cr>
    au FileType markdown setlocal spell spelllang=en_us
    au FileType markdown setlocal textwidth=120

    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine
endif

