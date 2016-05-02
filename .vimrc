"{Environment
  "Identify platform {
  silent function! OSX()
    return has('macunix')
  endfunction
  silent function! LINUX()
    return has('unix') || !has('mauix') && !has('win32unix')
  endfunction
  silent function! WINDOWS()
    return (has('win32') || has('win64'))
  endfunction
  "}
"}

"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  "vim-go | go settings `go get -u github.com/golang/lint`
  "set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
  call vundle#begin()
  "{plugins
    Plugin 'gmarik/Vundle.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'Raimondi/delimitMate'
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'dhruvasagar/vim-vinegar'
    Plugin 'docunext/closetag.vim'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'godlygeek/tabular'
    Plugin 'jaxbot/semantic-highlight.vim'
    Plugin 'kshenoy/vim-signature'
    Plugin 'maksimr/vim-jsbeautify'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'mattn/emmet-vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'moll/vim-node'
    Plugin 'mxw/vim-jsx'
    Plugin 'noscripter/tabman.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'tomtom/tcomment_vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'Yggdroot/indentLine'
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'tacahiroy/ctrlp-funky'
    Plugin 'mileszs/ack.vim'
    Plugin 'rking/ag.vim'
    Plugin 'bufexplorer.zip'
    Plugin 'itchyny/calendar.vim'
    Plugin 'ryanss/vim-hackernews'
    """"""""""""""""""""""""
    "Plugin 'tmhedberg/SimpylFold' " TODO
    "Plugin 'vim-scripts/indentpython.vim' " TODO
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'juvenn/mustache.vim'
    Plugin 'nono/vim-handlebars'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'klen/python-mode'
    Plugin 'vim-scripts/taglist.vim'
    Plugin 'vim-scripts/winmanager'
    "Plugin 'nvie/vim-flake8'
    "Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'OmniCppComplete'
    "Plugin 'ghewgill/vim-scmdiff'
    Plugin 'marijnh/tern_for_vim'
    "Plugin 'dyng/ctrlsf.vim'
    Plugin 'tpope/vim-dispatch'
    "Plugin 'wincent/ferret'
    "Plugin 'Shougo/vimproc.vim'
    Plugin 'Shougo/unite.vim'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'vim-scripts/mark'
    Plugin 'vim-scripts/matchit.zip'
    Plugin 'vim-scripts/Align'
    Plugin 'vim-scripts/greplace.vim'
    Plugin 'vim-scripts/a.vim'
    Plugin 'pyflakes/pyflakes'
    Plugin 'fs111/pydoc.vim'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-ragtag'
    "Plugin 'SyntaxComplete'
    Plugin 'othree/javascript-libraries-syntax.vim'
    "Plugin 'othree/vim-autocomplpop'
    "Plugin 'einars/js-beautify'
    "Plugin 'jaxbot/syntastic-react'
    "Plugin 'Auto-Pairs'
    "Plugin 'python-imports.vim'
    "Plugin 'CaptureClipboard'
    "Plugin 'ctrlp-modified.vim'
    "Plugin 'last_edit_marker.vim'
    "Plugin 'synmark.vim'
    "Plugin 'SQLComplete.vim'
    "Plugin 'haya14busa/incsearch.vim'
    "Plugin 'thinca/vim-quickrun'
    "Plugin 'kien/rainbow_parentheses.vim'
    Plugin 'evanmiller/nginx-vim-syntax'
    "Plugin 'szw/vim-ctrlspace'
    "Plugin 'kana/vim-textobj-line'
    "Plugin 'kana/vim-textobj-user'
    "Plugin 'kana/vim-textobj-entire'
    "Plugin 'kana/vim-textobj-indent'
    "Plugin 'jslint.vim'
    "Plugin 'jsbeautify'
    "Plugin 'django_templates.vim'
    "Plugin 'Django-Projects'
    "Plugin 'wincent/terminus'
    "Plugin 'rstacruz/sparkup'
    "Plugin 'wincent/command-t'
    "Plugin 'surround.vim'
    "Plugin 'L9'
    "Plugin 'FuzzyFinder'
    Plugin 'vim-voom/VOoM'
    Plugin 'vim-voom/VOoM_extras'
    Plugin 'justinj/vim-react-snippets'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    "Plugin 'msanders/snipmate.vim'
    Plugin 'slim-template/vim-slim'
    "Plugin 'FredKSchott/CoVim'
    Plugin 'myint/syntastic-extras'
    "Plugin 'kballard/vim-swift'
    "Plugin 'jparise/vim-graphql'
    Plugin 'fatih/vim-go'
    "Plugin 'michalliu/jsruntime.vim'
    "Plugin 'michalliu/sourcebeautify.vim'
    Plugin 'pangloss/vim-javascript'
    "Plugin 'xolox/vim-misc'
    "Plugin 'tommcdo/vim-exchange'
    "Plugin 'vim-scripts/ReplaceWithRegister'
    "Plugin 'christoomey/vim-sort-motion'
    "Plugin 'christoomey/vim-titlecase'
    Plugin 'juneedahamed/svnj.vim'
    "Plugin 'Shougo/deoplete.nvim'
    Plugin 'vim-scripts/Conque-Shell'
    Plugin 'FencView.vim'
    Plugin 'adah1972/tellenc'
    Plugin 'vim-scripts/VisIncr'
    Plugin 'vimwiki'
    "Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'groenewege/vim-less'
    "Plugin 'sheerun/vim-polyglot'
    "Plugin 'Shougo/vimshell.vim'
    "Plugin 'xolox/vim-shell'
    "Plugin 'xolox/vim-easytags'
    "Plugin 'edkolev/promptline.vim'
    "Plugin 'sjl/clam.vim'
    Plugin 'sjl/gundo.vim'
    "Plugin 'mbbill/undotree'
    "Plugin 'spf13/vim-autoclose'
    "Plugin 'spf13/PIV'
    Plugin 'spf13/snipmate-snippets'
    "Plugin 'vim-scripts/ZoomWin'
    "Plugin 'elzr/vim-json'
    "Plugin 'jeetsukumaran/vim-buffergator'
    "Plugin 'skalnik/vim-vroom'
    "Plugin 'mattn/webapi-vim'
    "Plugin 'ervandew/screen'
    "Plugin 'idbrii/AsyncCommand'
    "Plugin 'airblade/vim-rooter'
    "Plugin 'sidorares/node-vim-debugger'
    "Plugin 'ryanoasis/vim-devicons'
    "Plugin 'jelera/vim-javascript-syntax'
    "Plugin 'othree/html5-syntax.vim'
    "Plugin 'othree/html5.vim'
    "Plugin 'claco/jasmine.vim'
    "Plugin 'Shougo/vimfiler.vim'
    "Plugin 'rdnetto/YCM-Generator'
    "Plugin 'Shougo/neocomplete.vim'
    "Plugin 'Shougo/neocomplcache.vim'
    "Plugin 'othree/yajs.vim'
    "Plugin 'othree/es.next.syntax.vim'
    "Plugin 'hail2u/vim-css3-syntax'
    "Plugin 'cakebaker/scss-syntax.vim'
    Plugin 'honza/vim-snippets'
    Plugin 'SirVer/ultisnips'
    Plugin 'Shougo/neosnippet-snippets'
    Plugin 'Shougo/neosnippet.vim'
    "Plugin 'zenorocha/dracula-theme'
    "Plugin 'jdkanani/vim-material-theme'
    "Plugin 'kristijanhusak/vim-hybrid-material'
    "Plugin 'google/vim-colorscheme-primary'
    "Plugin 'flazz/vim-colorschemes'
    "Plugin 'terryma/vim-multiple-cursors'
    "Plugin 'Chun-Yang/vim-action-ag'
    "Plugin 'tpope/vim-haml'
    Plugin 'tpope/vim-bundler'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-cucumber'
    "Plugin 'gregsexton/gitv'
    "Plugin 'Lokaltog/vim-easymotion' "Note: this is deprecated
    "Plugin 'easymotion/vim-easymotion'
    "Plugin 'justinmk/vim-dirvish'
    Plugin 'ddollar/nerdcommenter'
    "Plugin 'AndrewRadev/splitjoin.vim'
    Plugin 'davidhalter/jedi-vim'
    "Plugin 'ervandew/supertab'
    Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-pastie'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'eventualbuddha/vim-protobuf'
    "Plugin 'tpope/vim-scriptease'
    "Plugin 'ynkdir/vim-vimlparser' "required by vimlint
    "Plugin 'chemzqm/unite-js-func'
    "Plugin 'syngan/vim-vimlint'
    "Plugin 'chrisbra/NrrwRgn'
    "Plugin 'mhinz/vim-signify'
    "Plugin 'mhinz/vim-grepper'
    "Plugin 'mhinz/vim-sayonara'
    "Plugin 'greyblake/vim-preview'
    Plugin 'guileen/vim-node-dict'
    "Plugin 'HerringtonDarkholme/yats.vim'
    "Plugin 'junegunn/vim-easy-align'
    "Plugin 'junegunn/goyo.vim'
    "Plugin 'bronson/vim-trailing-whitespace'
    "Plugin 'unblevable/quick-scope'
    "Plugin 'terryma/vim-expand-region'
    "Plugin 'klen/python-mode'
    "Plugin 'mattn/excelview-vim'
    "Plugin 'mattn/vim-maketable'
    "Plugin 'michalliu/jsoncodecs.vim'
    "Plugin 'vim-scripts/JavaScript-Indent'
    "Plugin 'ntpeters/vim-better-whitespace'
    "Plugin 'tpope/vim-obsession'
    "Plugin 'dhruvasagar/vim-prosession'
    "Plugin 'digitaltoad/vim-jade'
    "Plugin 'majutsushi/tagbar'
    "Plugin 'garyburd/go-explorer'
    "Plugin 'zchee/deoplete-go'
    "Plugin 'jnurmine/Zenburn'
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  "}
  " install vundle bundles
  if filereadable(expand("~/.vimrc/bundle"))
    source ~/.vimrc/bundles
    source ~/.vimrc/bundles.local
  endif
  call vundle#end()
"}

"{Basic settings
  set nospell
  set nu
  set relativenumber
  set ffs=unix,dos,mac
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set encoding=utf-8
  set termencoding=utf-8
  set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
  set fileformats=unix,dos,mac
  set linespace=0             " No extra spaces between rows
  set showmatch               " Show matching brackets/parenthesis
  set confirm                 " Confirm before vim exit
  if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
      set clipboard=unnamed
    endif
  endif
  set nobackup
  set noswapfile
  set nowritebackup
  set iskeyword-=_,.,=,-,:,#,
  set foldmethod=indent
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
  set guifont=Source\ Code\ Pro\ for\ Powerline:h16
  set autoread
  set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class
  if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
    set wildignore+=.git\*,.hg\*,.svn\*
  endif
  set lazyredraw      " don't update the display while executing macros
  set switchbuf=useopen           " reveal already opened files from the
                                  " quickfix window instead of opening new
                                  " buffers
  set wildmenu
  set copyindent
  set wildmode=list:longest,full
  if exists('$TMUX')
    set ttymouse=xterm2           " support resizing in tmux
    " Fix Cursor in TMUX
    let &t_SI="\<Esc>Ptumux:\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI="\<Esc>Ptumux:\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    let &t_SI="\<Esc>]50;CursorShape=1\x7"
    let &t_EI="\<Esc>]50;CursorShape=0\x7"
  endif
  set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too
  "if !&scrolloff
  "  set scrolloff=1           " Minimum lines to keep above and below cursor
  "endif
  "if !&sidescrolloff
  "  set scrolloff=5
  "endif
  set display+=lastline
  set nowrap      " Do not wrap long lines
  set backspace=eol,start,indent
  if has('syntax')
    syntax enable
  endif
  set textwidth=80
  let &colorcolumn=join(range(81,999),",")
  let &colorcolumn="80,".join(range(120,999),",")
  set colorcolumn=+1
  set autoindent
  set smartindent
  set smarttab
  set ruler
  if has("gui_macvim")            "autocmd GUIEnter * set fullscreen
    set fuoptions=maxvert,maxhorz
  endif
  set cursorcolumn
  set cursorline
  set autochdir
  set laststatus=2  " always show statusline
  set showtabline=2 " always show tabline
  set hidden
  " enables filetype based indentation
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  set noerrorbells novisualbell t_vb=
  set autowrite
  set autowriteall "Auto-write all file changes
  " autocompletion with dictionary help
  set dictionary+=/usr/share/dict/words
  set dictionary+=~/.vim/dict/
  set statusline+=%*
  set statusline+=%#warningmsg#
  filetype on
  set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
  set showmode                        " Display current mode
  set showcmd                         " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
  " Better Unix / Windows compatibility
  set viewoptions=folds,options,cursor,unix,slash 
  set virtualedit=onemore " used with caution of breaking plugins
  set completeopt=menuone,menu,preview,longest
  set tags=./tags;/,~/.vimtags
  " Make tags placed in .git/tags file available in all levels of a repository
  let gitroot = substitute(system('git rev-parse --show-toplevel'),
                \ '[\n\r]', '', 'g')
  if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
  endif
  set t_Co=256
  " gui settings
  if (&t_Co == 256 || has('gui_running'))
    if ($TERM_PROGRAM == 'iTerm.app')
      colorscheme PaperColor
    else
      colorscheme desert
    endif
  endif
  set nofoldenable                  " Auto fold code
  set foldlevel=1
  set foldlevelstart=99
  set nomodeline                  " disable mode lines (security measure)
  " allow mouse select and etc operation
  set mouse=a
  set history=1000
  " no annoying sound on errors
  set timeoutlen=500
  set formatoptions+=t
  if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment chars when join comment lines
  endif
  set formatoptions-=l " wrap long lines
  set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
  "set conceallevel=0
  set list
  set guioptions=e "only show guitablabel
  "set guioptions=
  syntax on
  highlight CursorLine term=reverse
  highlight CursorColumn term=reverse
  " configure default split position
  set splitbelow
  set splitright
  if has('gui_running')
    set background=dark
  endif
  set t_Co=256
"}

"{Mappings
  let mapleader=','
  nnoremap <Leader>2 :set tabstop=2  softtabstop=2 shiftwidth=2<CR>
  nnoremap <Leader>4 :set tabstop=4  softtabstop=4 shiftwidth=4<CR>
  nnoremap <Leader>eg :e ++enc=gbk<CR>
  nnoremap <Leader>eu :e ++enc=utf8<CR>
  nnoremap <Leader>h :nohlsearch<CR>
  " Use <C-L> to clear the highlighting of :set hlsearch
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?
              \ '<Bar>diffupdate':''<CR><CR><C-L>
  endif
  nnoremap <leader>l :set list!<CR>
  nnoremap <leader>w :set wrap!<CR>
  nnoremap <leader>f :%!js-beautify -j -q -B -f -<CR>
  nnoremap <c-s> :w<CR>
  "noremap <Leader>W :w !sudo tee % > /dev/null
  " Quickly edit/reload the vimrc file
    nnoremap <leader>ev :tabe $MYVIMRC<CR>
    nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
    nnoremap <space> za
    vnoremap <space> zf
  " tab switch key mappings
    " http://vim.wikia.com/wiki/Alternative_tab_navigation
    "nnoremap <A-1> 1gt
    "nnoremap <A-2> 2gt
    "nnoremap <A-3> 3gt
    "nnoremap <A-4> 4gt
    "nnoremap <A-5> 5gt
    "nnoremap <A-6> 6gt
    "nnoremap <A-7> 7gt
    "nnoremap <A-8> 8gt
    "nnoremap <A-9> 9gt
    "nnoremap <A-0> 10gt
  " map for xxd editing
    nnoremap <Leader>xd :%!xxd<CR>
    nnoremap <Leader>xr :%!xxd -r<CR>
    nnoremap <leader>t :tabe<cr>
    nnoremap <leader>tm :echo strftime('%c')<cr>
    nnoremap <leader>v :vnew<cr>
    nnoremap <leader>to :tabonly<cr>
    nnoremap <leader>x :q<cr>
    nnoremap <leader>tx :tabclose<cr>
    "nnoremap    <C-Tab>    :tabnext<CR>
    "imap   <C-Tab>    <C-O>:tabnext<CR>
    "map    <C-S-Tab>  :tabprev<CR>
    "imap   <C-S-Tab>  <C-O>:tabprev<CR>
  "Simplify help navigation
    "http://vim.wikia.com/wiki/Learn_to_use_help
    "Press Enter to jump to the subject (topic) under the cursor.
    "Press Backspace to return from the last jump.
    "Press s to find the next subject, or S to find the previous subject.
    "Press o to find the next option, or O to find the previous option.
    "nnoremap <buffer> <CR> <C-]>
    "nnoremap <buffer> <BS> <C-T>
    "nnoremap <buffer> o /'\l\{2,\}'<CR>
    "nnoremap <buffer> O ?'\l\{2,\}'<CR>
    "nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
    "nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
"}

"{Plugin settings
  "scrooloose/syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_check_on_open=0
    let g:syntastic_always_populate_loc_list=1
    let g:syntastic_auto_loc_list=1
    let g:syntastic_check_on_wq=1
    let g:syntastic_enable_signs=1
    let g:syntastic_aggregate_errors=1
    let g:syntastic_error_symbol="💣"
    let g:syntastic_warning_symbol="‼️""
    highlight SyntasticError guibg=#2F0000
    "nnoremap <leader>n :lnext<CR>
    "nnoremap <leader>p :lprevious<CR>
    "prerequisite:
    "  npm packages:
    "    eslint jsxhint babel-eslint eslint-plugin-react json-lint jshint
    "let g:syntastic_javascript_checkers = ['eslint',
    "    \'jsxhint', 'babel-eslint', 'eslint-plugin-react', 'json-lint',
    "    \'jshint', 'jscs']
    let g:syntastic_json_checkers=['jsonlint']
    let g:syntastic_javascript_checkers = ['eslint']
    "let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
    let g:syntastic_python_checkers = ['pylint']
    "let g:syntastic_python_python_exec="/usr/local/bin/python3"
    let g:syntastic_sass_checkers = ['sass', 'sassc']
    "let g:syntastic_scss_checkers = ['sass', 'sassc', 'scsslint']
    let g:syntastic_php_checkers = ['php']
    "let g:syntastic_ruby_checkers = ['robocop']
    "let g:syntastic_coffee_checkes = ['coffeelint']
    let g:syntastic_shell_checkers = ['shellcheck']
    " Set up the arrays to ignore for later
    if !exists('g:syntastic_html_tidy_ignore_errors')
        let g:syntastic_html_tidy_ignore_errors = []
    endif
    if !exists('g:syntastic_html_tidy_blocklevel_tags')
        let g:syntastic_html_tidy_blocklevel_tags = []
    endif
    " Try to use HTML5 Tidy for better checking?
    let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy5'
    " AP: honestly can't remember if this helps or not
    " installed with homebrew locally

    " Ignore ionic tags in HTML syntax checking
    " See http://stackoverflow.com/questions/30366621
    " ignore errors about Ionic tags
    let g:syntastic_html_tidy_ignore_errors += [
          \ "<ion-",
          \ "discarding unexpected </ion-"]
    " Angular's attributes confuse HTML Tidy
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ng-"]
    " Angular UI-Router attributes confuse HTML Tidy
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ui-sref"]
    " Angular in particular often makes 'empty' blocks, so ignore
    " this error. We might improve how we do this though.
    " See also https://github.com/scrooloose/syntastic/wiki/HTML:---tidy
    " specifically g:syntastic_html_tidy_empty_tags
    let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]
    " Angular ignores
    let g:syntastic_html_tidy_blocklevel_tags += [
          \ 'ng-include',
          \ 'ng-form'
          \ ]
    " Angular UI-router ignores
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ui-sref"]
    " Cpp checker settings
    let g:syntastic_cpp_check_header = 1
    let g:syntastic_cpp_auto_refresh_includes = 1

  "bling/vim-airline
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    let g:airline_symbols.linenr = '⭡'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_symbols.branch = '⭠'
    let g:airline_left_sep = '⮀'
    let g:airline_left_alt_sep = '⮁'
    let g:airline_right_sep = '⮂'
    let g:airline_right_alt_sep = '⮃'

  "scrooloose/nerdtree
    nnoremap <leader>ne :NERDTreeFind<CR>
    nnoremap <leader>nt :NERDTreeToggle<CR>
    let g:NERDTreeShowLineNumbers=1
    let g:NERDTreeChDirMode=2
    let NERDTreeWinPos="left"
    let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

  "jistr/vim-nerdtree-tabs
    "nnoremap <leader>nte :NERDTreeTabsToggle<CR>

  "noscripter/tabman.vim
    let g:tabman_side="right"
    let g:tabman_specials=1
    let g:tabman_number = 1

  "mhinz/vim-startify
    noremap <Leader>s :Startify<CR>
    let g:startify_list_order = [
          \ ['   Bookmarks'],     'bookmarks',
          \ ['   MRU'],           'files' ,
          \ ['   MRU '.getcwd()], 'dir',
          \ ['   Sessions'],      'sessions',
          \ ]
    let g:startify_bookmarks = [
          \ '~/projects/assets/daily.md',
          \ '~/projects/assets/',
          \ '~/projects/assets/mytaobao/mytaobao/nodejs/',
          \ '~/downloads/',
          \ '~/projects/node/',
          \  '~/projects/daily/',
          \ '~/projects/daily/fe-learning/',
          \  '~/projects/assets/item-detail/',
          \ '~/projects/assets/noscripter.github.io/',
          \ '~/projects/assets/noscripter.github.io/_posts/',
          \ '~/projects/assets/noscripter.github.io/lab/',
          \  '~/projects/daily/fe-learning/playground/']
    let g:startify_change_to_dir          = 0
    let g:startify_enable_special         = 0
    let g:startify_files_number           = 8
    let g:startify_session_autoload       = 1
    let g:startify_session_delete_buffers = 1
    let g:startify_session_persistence    = 1
    let g:startify_use_env                = 1

  "CtrlP
  """""""""""""""""""""""""
    if exists(':CtrplP')
      let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      " modify for spf13
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    endif
    nnoremap <leader>b :CtrlPBuffer<CR>

  "YouCompleteMe
    let g:ycm_min_num_of_chars_for_completion = 3
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_complete_in_comments = 1
    "leave '<tab>', '<c-j>' for ultisnips
    let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
    "leave '<s-tab>', '<c-k>' for ultisnips
    let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_global_ycm_extra_conf=
      \ '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    " http://www.alexeyshmalko.com/2014/
    " \ youcompleteme-ultimate-autocomplete-plugin-for-vim/
    let g:ycm_key_list_select_completion=[]
    let g:ycm_key_list_previous_completion=[]
    let g:ycm_autoclose_preview_window_after_completion=1
    map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
    let g:ycm_filetype_blacklist = {
          \ 'tagbar' : 1,
          \ 'qf' : 1,
          \ 'notes' : 1,
          \ 'markdown' : 1,
          \ 'unite' : 1,
          \ 'text' : 1,
          \ 'vimwiki' : 1,
          \ 'pandoc' : 1,
          \ 'infolog' : 1,
          \ 'mail' : 1
          \}
    let g:ycm_semantic_triggers =  {
          \ 'c' : ['->', '.'],
          \ 'objc' : ['->', '.'],
          \ 'ocaml' : ['.', '#'],
          \ 'cpp,objcpp' : ['->', '.', '::'],
          \ 'perl' : ['->'],
          \ 'php' : ['->', '::'],
          \ 'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
          \ 'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
          \ 'ruby' : ['.', '::'],
          \ 'lua' : ['.', ':'],
          \ 'erlang' : [':'],
          \}

  "mileszs/ack.vim
    " Use The Silver Searcher over grep, iff possible
    if executable('ag')
      " Use ag over grep
      set grepprg=ag\ --nogroup\ --nocolor
    endif

  "gitgutter
    let g:gitgutter_max_signs=900

  "editorconfig-vim
    let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
    let g:EditorConfig_verbose = 0
    "optional values are: ['fill', 'line', 'none']
    let g:EditorConfig_max_line_indicator = "fill"
    let g:EditorConfig_exec_path = "/usr/local/bin/editorconfig"

  "maksimr/vim-jsbeautify
    map <c-f> :call JsBeautify()<cr>
    autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer> <c-f>
            \ :call RangeJsBeautify()<cr>
    autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
    autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

  "ctrlp-py-matcher
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

  "neosnippet
    "disables all runtime snippets
    let g:neosnippet#disable_runtime_snippets = {
        \ '_' : 1
        \ }

  "SirVer/ultisnips
    "customize python and keymapping
    "ref:https://gist.github.com/lencioni/dff45cd3d1f0e5e23fe6
    "ref:https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
    let g:UltiSnipsUsePythonVersion     = 2
    let g:UltiSnipsExpandTrigger       = "<c-tab>"
    let g:UltiSnipsListSnippets        = "<c-l>"
    let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

  "ervandew/supertab
    "let g:SuperTabDefaultCompletionType = '<C-n>'
    "let g:SuperTabMappingForward        = '<c-tab>'
    "let g:SuperTabMappingBackward       = '<c-s-tab>'
    "let g:SuperTabCrMapping             = 0

  "moll/vim-node
    autocmd User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif

  "othree/javascript-libraries-syntax.vim
    let g:used_javascript_libs = 'react,angularjs,flux'

  "pangloss/vim-javascript
    "let g:javascript_conceal_function   = "ƒ"
    "let g:javascript_conceal_null       = "ø"
    "let g:javascript_conceal_this       = "@"
    "let g:javascript_conceal_return     = "⇚"
    "let g:javascript_conceal_undefined  = "¿"
    "let g:javascript_conceal_NaN        = "ℕ"
    "let g:javascript_conceal_prototype  = "¶"
    "let g:javascript_conceal_static     = "•"
    "let g:javascript_conceal_super      = "Ω"
    "let g:javascript_enable_domhtmlcss = 1

  "groenewege/vim-less
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd FileType less set omnifunc=csscomplete#CompleteCSS

  "vim-airline/vim-airline-themes
    "let g:airline_theme='dark'

  "fatih/vim-go
    let g:go_highlight_functions         = 1
    let g:go_highlight_methods           = 1
    let g:go_highlight_structs           = 1
    let g:go_highlight_interfaces        = 1
    let g:go_highlight_operators         = 1
    let g:go_highlight_build_constraints = 1
    let g:syntastic_go_checkers          = ['golint', 'govet', 'errcheck']
    let g:go_fmt_command                 = "goimports"
    let g:go_fmt_autosave                = 0
    au FileType go set expandtab

  "vim-action-ag
    " use * to search current word in normal mode
    "nmap * <Plug>AgActionWord
    " use * to search selected text in visual mode
    " vmap * <Plug>AgActionVisual

  "Yggdroot/indentLine
    let g:indentLine_enabled         = 1
    let g:indentLine_conceallevel    = 0
    let g:indentLine_color_term      = 239
    let g:indentLine_color_gui       = '#A4E57E'
    let g:indentLine_color_tty_light = 7
    let g:indentLine_color_dark      = 1
    let g:indentLine_char            = '┆'

  "mhinz/vim-grepper
    " Mimic :grep and make ag the default tool.
    let g:grepper = {
        \ 'tools': ['ag', 'git', 'grep'],
        \ 'open':  0,
        \ 'jump':  1,
        \ }

  "jaxbot/semantic-highlight.vim
    "let g:semanticEnableFileTypes = {'javascript': 'js', 'vim': 'vim'}

  "Shougo/neocomplete.vim
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  "vim-scripts/winmanager
  """"""""""""""""""""""""""""""
  " winManager setting
  """"""""""""""""""""""""""""""
  let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
  let g:winManagerWidth = 30
  let g:defaultExplorer = 0
  nmap <C-W><C-F> :FirstExplorerWindow<cr>
  nmap <C-W><C-B> :BottomExplorerWindow<cr>
  nmap <silent> <leader>wm :WMToggle<cr>

  "nvie/vim-flake8
    "let python_highlight_all = 1
    "syntax on
    "autocmd BufWritePost *.py call Flake8()
"}

"{helper functions
  " Set tabstop, softtabstop and shiftwidth to the same value
  command! -nargs=* Stab call Stab()
  function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
      let &l:sts = l:tabstop
      let &l:ts = l:tabstop
      let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
  endfunction

  function! SummarizeTabs()
    try
      echohl ModeMsg
      echon 'tabstop='.&l:ts
      echon ' shiftwidth='.&l:sw
      echon ' softtabstop='.&l:sts
      if &l:et
        echon ' expandtab'
      else
        echon ' noexpandtab'
      endif
    finally
      echohl None
    endtry
  endfunction

  function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
      if getbufvar(bufnr, "&modified")
        let label = '+'
        break
      endif
    endfor
    " Append the tab number
    let label .= v:lnum.': '
    " Append the buffer name
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
      " give a name to no-name documents
      if &buftype=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    else
      " get only the file name
      let name = fnamemodify(name,":t")
    endif
    let label .= name
    " Append the number of windows in the tab page
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
  endfunction
  function! SetTabLabel()
    set guitablabel=%{GuiTabLabel()}
  endfunction

  " http://vimdoc.sourceforge.net/htmldoc/gui.html
  "echom "May The FORCE be with U!"
  if exists("+showtabline")
    function! MyTabLine()
      let s = ''
      let t = tabpagenr()
      let i = 1
      while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        let s .= ' '
        let s .= i . ':'
        let s .= ' %*'
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
          let file = '[No Name]'
        endif
        let s .= file
        let i = i + 1
      endwhile
      let s .= '%T%#TabLineFill#%='
      let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
      return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
  endif

  "http://vim.wikia.com/wiki/Show_tab_number_in_your_tab_line
  " set up tab tooltips with every buffer name
  function! GuiTabToolTip()
    let tip = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
      " separate buffer entries
      if tip != ''
        let tip .= " \n "
      endif
      " Add name of buffer
      let name = bufname(bufnr)
      " add modified/modifiable flags
      if getbufvar(bufnr, "&modified")
        let tip .= ' [+]'
      endif
    endfor
    return tip
  endfunction
  set guitabtooltip=%{GuiTabToolTip()}

  " url:http://vimcasts.org/episodes/tidying-whitespace/
  function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction
  nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>
  nnoremap _= :call Preserve("normal gg=G")<CR>

  "Allow to toggle background
    function!  ToggleBG()
      let s:tbg = &background
      " Inversion
      if s:tbg == 'dark'
        set background=light
      else
        set background=dark
      endif
    endfunction
    noremap <leader>bg :call ToggleBG()<CR>
"}

"{auto commands
  " Return to last edit position when opening files (You want this!)
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
  " flagging unnecessary whitespace
  "au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
  "au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix
  autocmd! BufRead,BufNewFile *.markdown set filetype=mkd
  autocmd! BufRead,BufNewFile *.fdoc set filetype=yaml
  autocmd! BufRead,BufNewFile *.md       set filetype=mkd
  autocmd! BufRead,BufNewFile,BufReadPost *.snippets set filetype=snippets
  autocmd! BufRead,BufNewFile *.json set filetype=json
  autocmd! BufRead,BufNewFile *.ts set filetype=typescript
  autocmd BufNewFile,BufRead *.vm set filetype=html
  autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
  autocmd BufNewFile,BufRead *.conf set filetype=config
  au BufRead,BufNewFile *.scss set filetype=scss.css
  autocmd BufNewFile,BufRead *.vm set filetype=html
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee
  autocmd FileType haskell setlocal commentstring=--\ %s
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  autocmd FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
  " Instead of reverting the cursor to the last position in the buffer, we
  " set it to the first line when editing a git commit message
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG
        \ call setpos('.', [0, 1, 1, 0])
  au VimEnter * :call SetTabLabel()
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.json setf json
  autocmd BufNewFile,BufReadPost *.xtpl set filetype=html
  autocmd BufNewFile,BufRead *.vm set ft=velocity
  autocmd BufNewFile,BufRead *.xtpl set ft=html
  autocmd BufNewFile,BufRead *.ejs set ft=html
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xtpl set ft=html
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  autocmd FocusGained, BufEnter * :silent! !
  autocmd FileType python syn keyword pythonDecorator True None False self
  autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja
  autocmd BufNewFile,BufRead *.mako set ft=mako
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  au! BufRead,BufNewFile *.bat
        \ if getline(1) =~ '--\*-Perl-\*--' | setf perl | endif
  autocmd WinEnter call SetTabLabel()
  autocmd BufEnter call SetTabLabel()
  "https://superuser.com/questions/195022/
  " \ vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
  if expand("%:p")
    autocmd BufEnter * lcd %:p:h
  endif
  "http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
  "http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
  autocmd BufEnter * silent! lcd %:p:h
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
  let s:default_path = escape(&path, '\ ') " store default value of 'path'

  " Always add the current file's directory to the path and tags list if not
  " already there. Add it to the beginning to speed up searches.
  autocmd BufRead *
        \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
        \ exec "set path-=".s:tempPath |
        \ exec "set path-=".s:default_path |
        \ exec "set path^=".s:tempPath |
        \ exec "set path^=".s:default_path
  autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
  " Automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  " Restore cursor position upon reopening files {{{
  autocmd BufReadPost *
    \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$")|
    \   exe "normal! g`\"" |
    \ endif
  " }}}
  " gnuplot syntax highlighting
  au BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
  " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
  au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
"}
