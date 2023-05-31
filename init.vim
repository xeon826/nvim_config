lua require('plugins')
lua require('init')
nnoremap <C-\> :NvimTreeToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-A-q> :qa!<CR>
nnoremap <A-f> :FzfLua live_grep<CR>
nnoremap <A-F> :FzfLua live_grep_resume<CR>
nnoremap ff :NvimTreeFindFile<CR>
nnoremap <C-l> :FzfLua files<CR>
nnoremap <space>wq :wq<CR>
nnoremap <space>gb :FzfLua git_branches<CR>
nnoremap <space>gg :tab G<CR>
nnoremap <space>gc :FzfLua git_commits<CR>
nnoremap <space>gp :Git push<CR>
nnoremap <C-A-o> :nohlsearch<CR>
set termguicolors     " enable true colors support
let background="dark"   " for dark version of theme
colorscheme oxocarbon
" Inline comment mapping
" autocmd FileType tsx setlocal commentstring={*/\ %s /*}
" vim maps / to _ so use C-/ for this
nmap <C-_> :Commentary<CR>
vmap <C-_> :Commentary<CR>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

au TextYankPost * silent! lua vim.highlight.on_yank()
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set autoread
set statusline+=%F
set mouse=a
" set completeopt-=preview
nnoremap <A-i> :BufferClose<CR>
nnoremap <A-I> :BufferRestore<CR>
nnoremap <silent>    <A-P> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A-N> <Cmd>BufferMoveNext<CR>
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
nnoremap <silent>    <A-p> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-n> <Cmd>BufferNext<CR>
" nnoremap <Leader>ca <Plug>(coc-codeaction-selected)<CR>

nnoremap <leader>d  <Plug>(coc-codeaction)<CR>
nnoremap <leader>k  <Plug>(coc-codeaction-selected)w
nnoremap <leader>j  <Plug>(coc-codeaction-line)
nnoremap <leader>h  <Plug>(coc-codeaction-cursor)

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-html',
            \ 'coc-css',
            \ '@yaegassy/coc-pylsp',
            \ '@yaegassy/coc-ruff',
            \ 'coc-prettier'
            \ ]
autocmd FileType python let b:coc_root_patterns = ['venv', 'env', '.git', '.gitignore', 'manage.py']
