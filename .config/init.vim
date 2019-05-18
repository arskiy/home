execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

" no need to press an extra Ctrl W to switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Q> tabnext
nnoremap <C-W> tabprevious
nnoremap <C-T> tabnewexecute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>
no y "+y
no x "+x
no p "+p

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
no <F3> :!clang-format -style=chromium -i %<CR>

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

" make splitting sane
set splitright
set splitbelow
set ruler

" easy commenting


" Enable line breaking
set wrap

nno ; :
" no need to use shitty regexes
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" IDE-like brace completion
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

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
