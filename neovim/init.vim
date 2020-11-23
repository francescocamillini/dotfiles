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
nnoremap <Leader><Leader>o :tabe ~/.config/nvim/init.vim<CR>
nnoremap <Leader><Leader>s :source ~/.config/nvim/init.vim<CR>

let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-yaml'
            \ ]


call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline-themes'
" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'                                                                                                 " fuzzy search integration
Plug 'vim-airline/vim-airline', {'do': ':UpdateRemotePlugins'}
call plug#end()

colorscheme jellybeans
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
