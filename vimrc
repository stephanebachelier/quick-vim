scriptencoding utf-8
set encoding=utf-8

call pathogen#infect()
syntax on
filetype plugin indent on
set nofoldenable
set nocompatible
set nobackup
set nowb
set noswapfile
set ic
set mouse=a 

" syntax highligting
syntax enable
set background=dark
"let g:solarized_termcolors=256
"set t_Co=16 " added for chromeos crosh chroot ubuntu
colorscheme solarized


" quiet pls
set visualbell t_vb=

" turn OFF line numbers
set number " ...I go back and forth on this one

" 2 space softabs default
set expandtab
set ts=2
set sw=2

" \+n toggles the nerdtree
map <leader>n :NERDTreeToggle<CR>

" ctrl f for jsbeautify
let g:jsbeautify = {"indent_size": 2, "indent_char": "\t"}
let g:jsbeautify_engine = "node"
map <c-f> :call JsBeautify()<cr>

" 2 space coffeescript for the love of..
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" no need to fold things in markdown all the time
let g:vim_markdown_folding_disabled = 1

" Trailing whitespace
set list listchars=tab:»·,trail:¶,eol:$,extends:>,precedes:<

match ErrorMsg '\s\+$'

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

autocmd FileType python,coffee,javascript autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileType python,coffee,javascript autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FileType python,coffee,javascript autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd FileType python,coffee,javascript autocmd BufWritePre     * :call TrimWhiteSpace()

" syntax highlight for .md file
au BufRead,BufNewFile *.md set filetype=markdown

let g:Powerline_symbols = 'fancy'
" this should be used only if awesome terminal fonts
" https://github.com/gabrielelana/awesome-terminal-fonts/tree/patching-strategy
let g:Powerline_dividers_override = [[0xe0b0], [0xe0b1], [0xe0b2], [0xe0b3]]
let g:Powerline_symbols_override = {
  \ 'BRANCH': [0xe238],
  \ 'RO'    : [0xe0a2],
  \ 'FT'    : [0xe1f6],
  \ 'LINE'  : [0xe0a1],
\ }

" React JSX support
" See https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0
