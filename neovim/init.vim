set encoding=UTF-8
set numberwidth=5
set number
set tabstop=4                                                                                                           " number of visual spaces per TAB
set softtabstop=4                                                                                                       " number of spaces in tab when editing
set expandtab                                                                                                           " tabs are space
set shiftwidth=4                                                                                                        " number of spaces to use for autoindent
set nohlsearch                                                                                                          " disable highlight
set cursorline                                                                                                          " highlight current line     
hi LineNr cterm=bold ctermbg=black ctermfg=darkgrey gui=bold guibg=darkgray guifg=white

set t_Co=256

let mapleader=","
nnoremap <S-Up> :m-2<CR>|                                                                                               " normal mode: move current line up
nnoremap <S-Down> :m+<CR>|                                                                                              " normal mode: move current line down
nnoremap <C-u> viwUe|                                                                                                   " normal mode: uppercase current word
nnoremap <C-P> :FZF<CR>
nnoremap <C-F> :Ag<CR>
inoremap <C-d> <esc>ddi|                                                                                                " insert mode: delete current line
inoremap <C-u> <esc>viwUea|                                                                                             " insert mode: uppercase current word
inoremap <C-s> <esc>:w<CR>i
nnoremap <C-s> <esc>:w<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader><Leader>q :bp\|bd #<CR>

nnoremap <Leader><Leader>o :tabe ~/.config/nvim/init.vim<CR>
nnoremap <Leader><Leader>s :source ~/.config/nvim/init.vim<CR>
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)

let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-yaml',
            \ 'coc-prettier'
            \ ]


call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline-themes'
" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline', {'do': ':UpdateRemotePlugins'}
Plug 'ekalinin/Dockerfile.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } },
Plug 'chrisbra/csv.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
call plug#end()

colorscheme jellybeans
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:typescript_indent_disable = 1
