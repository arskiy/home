"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Pluginins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = "\<Space>"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.
Plugin 'gmarik/Vundle.vim'							" Vundle
Plugin 'vim-airline/vim-airline'					" Airline
Plugin 'vim-airline/vim-airline-themes'				" Airline Themes
Plugin 'scrooloose/nerdtree'						" added nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'anned20/vimsence'
Plugin 'crusoexia/vim-monokai'
Plugin 'rust-lang/rust.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'racer-rust/vim-racer'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
" Completion plugins
" Syntactic language support
Plugin 'cespare/vim-toml'
call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PlugininList       - lists configured plugins
" :PlugininInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugininSearch foo - searches for foo; append `!` to refresh local cache
" :PlugininClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Pluginin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap ESC to ii
:imap ii <Esc>
"Disable arrow keys in Normal mode
" python provider for neovim
let g:racer_cmd = "/home/user/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:powerline_pycmd = "py3"
"
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"Disable arrow keys in Insert mode
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
set rtp+=/usr/share/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax on
set number relativenumber
set nu rnu
let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'
let g:Powerline_symbols = 'fancy'
" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)

set incsearch
set ignorecase
set smartcase
set gdefault

set autoindent
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <F2> :RustFmt<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch
set backup
set noswapfile
set background=dark
colorscheme monokai
let g:minimap_highlight='Visual'
let g:space_vim_transp_bg = 1
let g:python_highlight_all = 1
syntax on

let g:rustfmt_autosave = 1

set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set splitright
set splitbelow
set ruler

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

map j gj
map k gk

map H ^
map L $
map J 5j
map K 5k

ino <F1> <ESC>

set hidden

nnoremap ; :

let g:minimap_toggle='<C-M>'

set completeopt=noinsert,menuone,noselect
" tab to select
" and don't hijack my enter key
set shortmess+=c

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:python3_host_prog = '/usr/bin/python3'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Q> tabnext
nnoremap <C-W> tabprevious
nnoremap <C-T> tabnew
