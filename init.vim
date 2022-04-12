set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set guicursor=i:block

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" magma-nvim config
nnoremap <silent>       <LocalLeader>rip :MagmaInit python3<CR>
nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>
nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>
xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>
nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>
