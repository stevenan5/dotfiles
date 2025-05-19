set encoding=utf-8
set number
set relativenumber
set history=1000
set showcmd
set showmode
set autoread

filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set cinkeys-=0#
set indentkeys-=0#

set hidden

syntax on
set t_Co=256
set term=xterm+256color
colorscheme desert

set list
set listchars=trail:·

set mouse=a
map <ScrollWheelDown> j
map <ScrollWheelUp> k

autocmd Filetype python
            \ set cc=80

set hlsearch
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Start clientserver for inverse pdf search
if empty(v:servername) && exists('*remote_startserver')
    call remote_startserver('VIM')
endif

let mapleader = "\\"

" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Tilde switch for ^/_
function! TildeSwitch()
    " gets current character
    let curr_char = getline(".")[col(".") - 1]

    if curr_char == '^'
        normal! r_
    elseif curr_char == '_'
        normal! r^
    elseif curr_char == '('
        normal! r)
    elseif curr_char == ')'
        normal! r(
    elseif curr_char == '['
        normal! r]
    elseif curr_char == ']'
        normal! r[
    elseif curr_char == '{'
        normal! r}
    elseif curr_char == '}'
        normal! r{
    else
        normal! ~
    endif
endfunction

" call tildeswitch
nnoremap <silent> ~ :silent call TildeSwitch() <Cr>

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'unblevable/quick-scope'
Plug 'junegunn/vim-easy-align'
Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'
Plug 'sirver/ultisnips'
call plug#end()

" quick-scope config
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" ultisnips config
"Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" vimtex configuration
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_quickfix_ignore_filters = [ 'Underfull' ]
let g:vimtex_quickfix_autoclose_after_keystrokes = 1
