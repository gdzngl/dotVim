"Set runtime because it doesn't always work on windows
set runtimepath=~/.vim,$VIMRUNTIME

" Enable all vim features
set nocompatible

" set font for windows gui
" set guifont=Courier_New:h10:cDEFAULT
set guifont=ProggyCleanTT:h12:cDEFAULT
" set guifont=Consolas:h10:cDEFAULT

" Colorscheme with dark background
"colorscheme elflord 
set t_Co=256
colorscheme ir_black
set background=dark

" Enable syntax highlighting
syntax enable
" Set shiftwidth for better indenting
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" datestamp abbreviations
:iab dts <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
:iab ddss <C-R>=strftime("%Y-%m-%d")<CR>
:iab ddts #----------<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>----------
:iab ttss :<C-R>=strftime("%Y-%m-%d %H.%M.%S")<CR>:


" Comment abbreviations
:ab === ==============================================================================
:ab --- ------------------------------------------------------------------------------
:ab ~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:ab ``` ``````````````````````````````````````````````````````````````````````````````
:ab ### ##############################################################################


" For Ruby
au Filetype ruby setlocal ts=2|setlocal sw=2|setlocal softtabstop=2
au Filetype ruby setlocal expandtab autoindent

" Foldmethod
set foldmethod=indent
