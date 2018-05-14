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
set showcmd	" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase	" Do smart case matching
set incsearch	" Incremental search
set hlsearch
set autowrite	" Automatically save before commands like :next and :make
set hidden " Hide buffers when they are abandoned
set mouse=r	" Enable mouse usage (all modes)
set nu
set autochdir
set wildmenu " enhanced command-line completion
set undofile 
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set paste
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undo
set cursorline
hi CursorLine cterm=NONE ctermfg=white

set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit! " read-only files (type quickly)

" Chargement de tous les plugins
exec pathogen#infect()
