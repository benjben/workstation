" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
set autowrite		" Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set nu
"set paste
set autochdir
set wildmenu            " enhanced command-line completion

set tabstop=2
set shiftwidth=2

set expandtab
set smarttab
set autoindent

set cursorline
hi CursorLine cterm=NONE ctermfg=white

" Neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

inoremap <expr><C-g>    neocomplcache#undo_completion()
inoremap <expr><C-l>    neocomplcache#complete_common_string()
inoremap <expr><TAB>    pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h>    neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>     neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>    neocomplcache#close_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Chargement de tous les plugins
exec pathogen#infect()
