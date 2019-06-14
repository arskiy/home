
call plug#begin()
Plug 'liuchengxu/space-vim-theme'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
call plug#end()

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

no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>
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

set clipboard=unnamed

map <C-n> :NERDTreeToggle<CR>
map <F2> :RustFmt<CR>
no <F3> gg=G


" easy commenting
au BufEnter,BufNew *.rb no c ^i#<Space><ESC>^
au BufEnter,BufNew *.py no c ^i#<Space><ESC>^
au BufEnter,BufNew *.sh no c ^i#<Space><ESC>^

au BufEnter,BufNew *.cc no c ^i//<Space><ESC>^
au BufEnter,BufNew *.cpp no c ^i//<Space><ESC>^
au BufEnter,BufNew *.java no c ^i//<Space><ESC>^
au BufEnter,BufNew *.c no c ^i//<Space><ESC>^
au BufEnter,BufNew *.cs no c ^i//<Space><ESC>^
au BufEnter,BufNew *.hpp no c ^i//<Space><ESC>^
au BufEnter,BufNew *.hh no c ^i//<Space><ESC>^
au BufEnter,BufNew *.rs no c ^i//<Space><ESC>^
au BufEnter,BufNew *.go no c ^i//<Space><ESC>^
au BufEnter,BufNew *.js no c ^i//<Space><ESC>^

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

set incsearch
set ignorecase
set smartcase
set gdefault

set autoindent
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
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

" IDE-like brace completion
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"colorscheme space_vim_theme

" Auto-format when coding Rust
let g:rustfmt_autosave = 1

" make vim sane
map H ^
map L $
map J 5j
" need to rebind it to nothing first because spaceVim uses K
no  K <Nop>
map K 5k

no j gj
no k gk

let g:spacevim_autocomplete_method = "coc"
