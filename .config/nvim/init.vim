" Plugins
call plug#begin()
"Plug 'majutsushi/tagbar'
"Plug 'Shougo/vimproc.vim'
"Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
"Plug 'fatih/vim-go'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
"Plug 'bbchung/Clamp'
"Plug 'Yggdroot/indentLine'
Plug 'rhysd/vim-clang-format'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
"Plug 'scrooloose/nerdtree'
"Plug 'easymotion/vim-easymotion'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

" multiple colorschemes
Plug 'rakr/vim-one'
Plug 'jacoborus/tender.vim'
Plug 'scottmckendry/cyberdream.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'tribela/vim-transparent'
call plug#end()

let mapleader=","

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" good candidates 'laederon', 'lucius', 'understated', 'wombat', 'bubblegum', 'badwolf'
" 'bubblegum' is good for green scheme
" 'lucius' is good for black scheme
let g:airline_theme = 'lucius'
" let g:airline_theme = 'one'

let g:one_allow_italics = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-q>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

nnoremap <leader>z :call fzf#run(fzf#wrap({'options': '--preview "bat --color always {}"'})) <CR>

" let g:clamp_libclang_file = '/usr/lib/libclang.so'

let g:indentLine_char = '┊'

let g:clang_format#style_options = {
      \ "AccessModifierOffset" : -4}
let g:clang_format#detect_style_file = 1
au FileType c,cpp ClangFormatAutoEnable

let g:notes_directories = ['~/notes']

map  <Leader>e <Plug>(easymotion-bd-w)

let g:NERDTreeWinSize=20

" ============================================================

colorscheme catppuccin-macchiato
hi Normal ctermbg=none

au FileType c,cpp,java setlocal cindent
au FileType tex,plaintex setlocal shiftwidth=2 tabstop=2
au FileType python setlocal shiftwidth=4 tabstop=4
au FileType java setlocal shiftwidth=2 tabstop=2
au FileType lua setlocal shiftwidth=3 tabstop=3
au FileType vim setlocal shiftwidth=2 tabstop=2
au FileType javascript setlocal shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.md setlocal filetype=markdown

set hidden " allows you to have unwritten changes to a file and open a new file
set smartcase " ignore case if search pattern is all lowercase
set history=1000

set wildmenu
set nu
set nowrap
set showcmd
set tabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set showmatch
set ruler
set et
set cursorline
set linebreak
set incsearch
set mousehide
set fileencodings=ucs-bom,utf-8,gb2312
set number

" inoremap " ""<left>
" inoremap [ []<left>
" inoremap ( ()<left>
" inoremap { {}<left>
imap <C-l> <esc><C-l>zza
inoremap <C-e> <end>
inoremap <C-b> <left>
inoremap <C-f> <right>

nnoremap <C-p> :bprev<cr>
nnoremap <C-n> :bnext<cr>
nnoremap <C-L> :nohl<cr><C-L>
nnoremap <C-k> :bp<cr>:bd #<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wq<cr>
nnoremap <leader>s :saveas 
nnoremap <leader>t :NvimTreeToggle<cr> 

nnoremap j gj
nnoremap k gk
nnoremap Y yy

set undofile                " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo " where to save undo histories, dir should be created manually
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set mouse=

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/nvim_tree.lua

