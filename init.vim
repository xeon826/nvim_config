lua require('plugins')
lua require('init')
nnoremap <C-\> :NvimTreeToggle<CR>
nnoremap <A-n> :tabnext<CR>
nnoremap <A-p> :tabprev<CR>
nnoremap <C-i> :tabc<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-A-f> :Ag<CR>
nnoremap <silent> <c-p> :lua require("nvim-find.defaults").files()<CR>
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
let g:block_comment_dict = {
		\'/*': ["js", "ts", "cpp", "c", "dart", "tsx"],
		\'"""': ['py'],
		\}

let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "dart", "tsx"],
		\'#': ['py', 'sh'],
		\'"': ['vim'],
		\}

