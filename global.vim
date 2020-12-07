
""set rtp+=/usr/local/lib/python3.8/dist-packages/powerline/bindings/vim
""set laststatus=2
""set t_Co=256

" Bật highlight cú pháp cho một loại file (như .py, .cpp, .xml)
syntax enable
syntax on

" Hiện số thứ tự của dòng
set number

" Hiện số thứ tự theo cách relative
" Dòng hiện tại đánh số 0, dòng trên và dòng dưới là 1, 
" và cứ thế đối với các dòng khác
" set relativenumber

" Chỉnh 4 space mỗi tab
set tabstop=4 softtabstop=4

" Chỉnh 4 space mỗi indent
set shiftwidth=4

" Sử dụng space character thay tab character khi nhấn Tab
set expandtab

" Tự động indent khi xuống hàng
" set autoindent
set smartindent

" Sử dụng clipboard hệ thống thay buffer của vim
set clipboard=unnamedplus

" Highlight dòng hiện tại
set cursorline

set smartcase
set incsearch

" Gọi đầu tiên
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'valloric/youcompleteme'
"Plug 'honza/vim-snippets'
"Plug 'ervandew/supertab'
"Plug 'vim-scripts/AutoClose'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sickill/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/html5.vim'
"Plug 'docunext/closetag.vim'
Plug 'alvan/vim-closetag'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Kết thúc việc cài plugin
call plug#end()

" dracule
" Plug 'dracula/vim', { 'as': 'dracula' }
" packadd! dracula
colorscheme dracula

" NERDTree
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" youcompleteme
"let g:ycm_clangd_binary_path = "/usr/bin/clangd"

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \}
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'





