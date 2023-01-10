"--------------------------------------------------
"   Plugins
"--------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"--------------------------------------------------
"   Basic
"--------------------------------------------------
syntax enable
syntax on
set cindent
set cursorline
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set guifont=Monaco:h13
set hlsearch
set incsearch
set laststatus=2
set magic
set matchtime=1
set number
set ruler
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set whichwrap=h,l,b,s,<,>,[,]

"--------------------------------------------------
"   Programming
"--------------------------------------------------
" C
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes'
" C++
autocmd FileType cpp inoremap {<CR> {<CR>}<ESC>O
" Python
autocmd FileType python set ts=4 | set sw=4
autocmd FileType python set colorcolumn=72
autocmd FileType python inoremap {<CR> {<CR>}<ESC>O
" autocmd FileType python inoremap [ []<Esc>i
" autocmd FileType python inoremap ( ()<Esc>i
" autocmd FileType python inoremap ' ''<Esc>i
" autocmd FileType python inoremap " ""<Esc>i
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let python_highlight_all=1
" MATLAB
autocmd FileType matlab set ts=4 | set sw=4
" Latex
let g:tex_flavor = 'tex'
autocmd FileType tex set spell | set colorcolumn=72

"--------------------------------------------------
"   Shortcuts
"--------------------------------------------------
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
noremap <D-1> 1gt
noremap <D-2> 2gt
noremap <D-3> 3gt
noremap <D-4> 4gt

map <F2> :w<CR>:!pdflatex %<CR>
map <F3> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!make"
    elseif &filetype == 'cpp'
        exec "!make"
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'tex'
        exec "!make pdf"
    endif
endfunc

"--------------------------------------------------
"   Auto Comment
"--------------------------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

set vb t_vb=
if has("gui_running")
endif

"--------------------------------------------------
"   Schemes
"--------------------------------------------------
set background=dark
" colorscheme solarized
" colorscheme jellybeans
" colorscheme tomorrow-night
let g:hybrid_custom_term_colors=1
let g:hybrid_reduced_contrast=1
colorscheme hybrid
