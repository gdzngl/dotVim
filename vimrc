"Set runtime because it doesn't always work on windows
set runtimepath=~/.vim,$VIMRUNTIME

filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


" Enable syntax highlighting
syntax enable
" Set shiftwidth for better indenting
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" set font for windows gui
" set guifont=Courier_New:h10:cDEFAULT
set guifont=ProggyCleanTT:h12:cDEFAULT
" set guifont=Consolas:h10:cDEFAULT

" datestamp abbreviations
:iab dts <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
:iab ddss <C-R>=strftime("%Y-%m-%d")<CR>
:iab ddts #----------<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>----------
:iab ttss :<C-R>=strftime("%Y-%m-%d %H.%M.%S")<CR>:

filetype plugin indent on 

set background=dark
"colorscheme solarized
colorscheme vividchalk

set fdm=indent

let g:notes_directory = '~/Dropbox/Elements/Notes'
let g:notes_suffix = '.txt'
