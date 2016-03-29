set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" HERE
Plugin 'elixir-lang/vim-elixir'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'othree/html5.vim'
"Plugin 'hail2u/vim-css3-syntax'
Plugin 'jtratner/vim-flavored-markdown'
  let g:markdown_fenced_languages=['ruby', 'javascript', 'elixir', 'clojure', 'sh', 'html', 'sass', 'scss', 'haml', 'erlang']

autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
autocmd FileType markdown set tw=80

Plugin 'tomtom/tcomment_vim'
Plugin 'tomasr/molokai'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bling/vim-airline'       " UI statusbar niceties
Plugin 'chriskempson/base16-vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'roman/golden-ratio'
Plugin 'kien/ctrlp.vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'kmyk/sdl2.vim'
Plugin 'vim-scripts/Conque-Shell'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'powerline/powerline'
  set laststatus=2               " enable airline even if no splits
  let g:airline_theme='luna'
  let g:airline_powerline_fonts=1
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = '|'
  let g:airline_right_sep = '|'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
" END HERE

call vundle#end()            " required
filetype plugin indent on    " required


set number " line numbering
set t_Co=256 " Force 256 colors

set t_ut= " improve screen clearing by using the background color
set background=dark
syntax enable
set enc=utf-8

set cul
set cuc
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set showcmd
set noswapfile
set encoding=utf-8
set scrolloff=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set background=dark
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
colorscheme molokai

map <leader>t :mix test<cr>
map <leader>t :mix dogma<cr>
command Vcs sp ~/.vim-cheatsheet/cheatsheet.md
