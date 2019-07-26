call plug#begin()
Plug 'liuchengxu/space-vim-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'beyondmarc/glsl.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mbbill/undotree'
Plug 'gcmt/wildfire.vim'
Plug 'mattn/gist-vim'
"Plug 'vim-syntastic/syntastic'
call plug#end()

let g:deoplete#enable_at_startup = 1
" no need to press an extra Ctrl W to switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

no <C-Q> tabprev
no <C-W> tabnext
nnoremap <C-T> tabnewexecute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'


let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1

let g:airline#extensions#tabline#enabled = 1

let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'

let g:lisp_rainbow = 1

no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

" always copy to global clipboard
no y "+y
no x "+x
no p "+p

filetype plugin indent on

"let g:airline_theme='base16_spacemacs'
let g:airline_theme='deus'

syntax on
colorscheme space_vim_theme

set number
set noswapfile
set nobackup
"Disable arrow keys in Insert mode
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

map <C-n> :NERDTreeToggle<CR>
map <F2> :RustFmt<CR>

" indent code on f3
no <F3> gg=G
no <F5> :UndotreeToggle<CR>
" au BufEnter,BufNew *.rs no <F3> :RustFmt<CR>

" easy commenting
au BufEnter,BufNew *.rb,*.py,*.sh,*.smali,*akefile,*.toml no c ^i#<Space><ESC>^
au BufEnter,BufNew *.cc,*.cpp,*.java,*.c,*.cs,*.hpp,*.hh,*.rs,*.go,*.js no c ^i//<Space><ESC>^
au BufEnter,BufNew *.vim,*.nvim,.vimrc no c ^i"<Space><ESC>^
au BufEnter,BufNew *.lua no c ^i--<Space><ESC>^
au BufEnter,BufNew *.lisp no c ^i;<Space><ESC>^

" remove whitespace
autocmd FileType c,cpp,java,php,rs,lisp,rb,cc,hh,h,hpp,go,js,vim,nvim,lua,toml,py,sh autocmd BufWritePre <buffer> %s/\s\+$//e

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.

set hidden

set incsearch
set ignorecase
set smartcase
set gdefault

set autoindent
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab

set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

"When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on
"
set autoindent

"Instead of failing a command because of unsaved changes, instead raise a  dialogue asking if you wish to save changed files
set confirm

" make splitting sane
set splitright
set splitbelow
set ruler

" Enable line breaking
set wrap

nno ; :

set mouse=a
" no need to use shitty regexes
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" auto insert mode when entering terminal
autocmd BufWinEnter,WinEnter term://* startinsert

tnoremap <Esc> <C-\><C-n>

tnoremap <C-h> <C-\><C-n><C-w><C-h>
tnoremap <C-j> <C-\><C-n><C-w><C-j>
tnoremap <C-k> <C-\><C-n><C-w><C-k>
tnoremap <C-l> <C-\><C-n><C-w><C-l>

tnoremap <C-t> <C-\><C-n>:q<CR>

tnoremap ; :
tnoremap : <C-\><C-n>:
" open terminal with vim
command! Termspl split | resize 9 | terminal

" au VimEnter * Termspl
" switch to the above split pane auto
" au VimEnter * wincmd k

map <C-t> :Termspl<CR>i

" IDE-like brace completion
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Auto-format when coding Rust
let g:rustfmt_autosave = 1

" make vim sane
map H ^
map L $
map J 5j
map K 5k

no j gj
no k gk
