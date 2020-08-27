set encoding=utf-8

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4 

set guifont=FuraMono_NF:h12
set encoding=UTF-8

" Colors
try
    colorscheme forest-night
catch
endtry

set background=dark

" set termguicolors

" define lightline configuration
let g:lightline = {
            \ 'colorscheme': 'forest_night',
            \ }
