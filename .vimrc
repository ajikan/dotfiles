" =============================================================================
"                               General settings
" =============================================================================

set number relativenumber
set nocompatible        " iMproved.
set hidden              " Allow for putting dirty buffers in background.
set ignorecase          " Case-insensitive search
set smartcase           " Override ignorecase when searching uppercase.
set modeline            " Enables modelines.
set wildmode=longest,list:full " How to complete <Tab> matches.
set virtualedit=block   " Support moving in empty space in block mode.
set clipboard=unnamed   " Propagate yank/paste to system clipboard

highlight LineNr ctermfg=grey ctermbg=black

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Low priority for these files in tab-completion.
set suffixes+=.aux,.bbl,.blg,.dvi,.log,.pdf,.fdb_latexmk     " LaTeX
set suffixes+=.info,.out,.o,.lo

set viminfo='20,\"500

" No header when printing.
set printoptions+=header:0

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" keep 5 lines above the cursor while scrolling
set scrolloff=5

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Always show the status line
set laststatus=2

set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

set showcmd

" Remap leader key
let mapleader = ","

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

let python_space_error_highlight = 0
let python_highlight_all = 0

scriptencoding utf-8
set encoding=UTF-8

" =============================================================================
"                                   Styling
" =============================================================================

set hlsearch            " Highlight search results.
set showbreak=…         " Highlight non-wrapped lines.
set showcmd             " Display incomplete command in bottom right corner.

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" =============================================================================
"                                    Plugins
" =============================================================================

" Install Plug if not present.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'edkolev/tmuxline.vim'
"Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'
call plug#end()


let g:polyglot_disabled = ['latex']

" -- fzf ---------------------------------------------------------------------
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>f :Files<CR>
set rtp+=/usr/local/opt/fzf

" -- coc ---------------------------------------------------------------------
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
set rtp+=/Users/andrewzhang/.vim/plugged/coc.nvim
" TextEdit might fail if hidden is not set.
set hidden

" scrolling function definition popups
set mouse=a

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
" prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" -- NERDTree ----------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>

" -- Vimtex ------------------------------------------------------------------
let g:vimtex_view_method = 'skim'

" -- Lightline ---------------------------------------------------------------

"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ }

" -- Airline -----------------------------------------------------------------
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme= 'onedark'
"let g:airline_solarized_bg='dark'

" -- Vimux -------------------------------------------------------------------
"  <Leader> is ,
" Prompt for a command to run
nnoremap <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
nnoremap <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
nnoremap <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
" Use ctrl-<direction> to exit
nnoremap <Leader>vz :VimuxZoomRunner<CR>

" Vim Split -> ctrl-w + v

" -- Tmuxline ----------------------------------------------------------------
"let g:tmuxline_theme = 'airline'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cut -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}
