lua require('plugins')
lua require('init')
nnoremap <C-\> :NvimTreeToggle<CR>
nnoremap <A-n> :tabnext<CR>
nnoremap <A-p> :tabprev<CR>
nnoremap <C-i> :tabc<CR>
nnoremap <C-s> :w<CR>
nnoremap <A-9> :DiffviewOpen<CR>
nnoremap <A-8> :DiffviewClose<CR>
nnoremap <C-A-f> :FzfLua live_grep<CR>
nnoremap <C-A-F> :FzfLua live_grep_resume<CR>
nnoremap <C-A-g> :FzfLua git_branches<CR>
nnoremap <C-A-l> :FzfLua files<CR>
nnoremap <C-A-C> :FzfLua git_commits<CR>
nnoremap <C-A-o> :nohlsearch<CR>
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
let g:block_comment_dict = {
		\'/*': ["js", "ts", "cpp", "c", "dart", "tsx"],
		\'"""': ['py'],
		\'--[[': ['lua'],
		\}

let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "dart", "tsx"],
		\'#': ['py', 'sh'],
		\'--': ['lua'],
		\'"': ['vim'],
		\}

au TextYankPost * silent! lua vim.highlight.on_yank()
set clipboard+=unnamedplus
