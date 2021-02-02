call plug#begin("~/.config/nvim/plugged")
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', {'branch': 'main'}
Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs'
call plug#end()

syntax on
colorscheme dracula
set splitright
set nu
set splitbelow
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-eslint', 'coc-highlight']
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
function! OpenTerminal()
	split term://bash
	resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
tnoremap <A-Left> <C-\><C-n><C-w><Left>
tnoremap <A-Down> <C-\><C-n><C-w><Down>
tnoremap <A-Up> <C-\><C-n><C-w><Up>
tnoremap <A-Right> <C-\><C-n><C-w><Right>
nnoremap <A-Left> <C-w><Left>
nnoremap <A-Down> <C-w><Down>
nnoremap <A-Up> <C-w><Up>
nnoremap <A-Right> <C-w><Right>
