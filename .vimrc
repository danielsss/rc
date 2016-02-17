"""""""""""""""""""""""""""""
" .vimrc file for macvim
"""""""""""""""""""""""""""""
"{setup of vundle
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  "{{{vundle Plugins
    Plugin 'gmarik/Vundle.vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'bufexplorer.zip'
    Plugin 'scrooloose/nerdtree'
    Plugin 'mileszs/ack.vim'
    Plugin 'ryanss/vim-hackernews'
    Plugin 'maksimr/vim-jsbeautify'
    Plugin 'einars/js-beautify'
    Plugin 'tpope/vim-fugitive'
    Plugin 'docunext/closetag.vim'
    Plugin 'bling/vim-airline'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'mattn/emmet-vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'godlygeek/tabular'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Shougo/neocomplete.vim'
    Plugin 'Shougo/neocomplcache.vim'
    Plugin 'rking/ag.vim'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'vim-scripts/matchit.zip'
    Plugin 'michalliu/sourcebeautify.vim'
    Plugin 'michalliu/jsruntime.vim'
    Plugin 'michalliu/jsoncodecs.vim'
    Plugin 'tpope/vim-obsession'
    Plugin 'dhruvasagar/vim-prosession'
    Plugin 'mxw/vim-jsx'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'noscripter/tabman.vim'
    Plugin 'dhruvasagar/vim-vinegar'
    Plugin 'jaxbot/syntastic-react'
    Plugin 'klen/python-mode'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-endwise'
    Plugin 'itchyny/calendar.vim'
    Plugin 'junegunn/vim-easy-align'
    Plugin 'marijnh/tern_for_vim'
    Plugin 'guileen/vim-node-dict'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'nvie/vim-flake8'
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'kshenoy/vim-signature'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'tpope/vim-surround'
  "}}}
  call vundle#end()
"}

"{{{Basic settings
  set nospell
  set nu
  set relativenumber
  syntax on
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
  set iskeyword-=_,.,=,-,:,
  set foldmethod=indent
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
  set guifont=Inconsolata-dz\ for\ Powerline:h16
  set autoread
  set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class
  if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
    set wildignore+=.git\*,.hg\*,.svn\*
  endif
  set guioptions-=rlRL
  set lazyredraw      " don't update the display while executing macros
  set switchbuf=useopen           " reveal already opened files from the
                                  " quickfix window instead of opening new
                                  " buffers
  set wildmenu
  set copyindent
  set wildmode=list:longest,full
  set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too
  set scrolloff=1           " Minimum lines to keep above and below cursor
  set nowrap      " Do not wrap long lines
  set backspace=eol,start,indent
  if has('syntax')
    syntax enable
  endif
  set textwidth=80
  highlight ColorColumn term=reverse ctermbg=236 guibg=#232526
  let &colorcolumn=join(range(81,999),",")
  let &colorcolumn="80,".join(range(120,999),",")
  set colorcolumn=+1
  set autoindent
  set smartindent
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
  if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
    " ...
  endif
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
  set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
  set virtualedit=onemore " used with caution of breaking plugins
  set completeopt=menuone,menu,preview,longest
  set tags=./tags;/,~/.vimtags
  " Make tags placed in .git/tags file available in all levels of a repository
  let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
  if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
  endif
  colorscheme molokai "abra molokai desert solarized darkblack jellybeans
  set t_Co=256
  set nofoldenable                  " Auto fold code
  set foldlevel=1
  set foldlevelstart=99
  set nomodeline                  " disable mode lines (security measure)
  " allow mouse select and etc operation
  set mouse=a
  set history=1000
  " no annoying sound on errors
  set timeoutlen=500
  set formatoptions+=t "
  set formatoptions-=l " wrap long lines
  set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
  set conceallevel=0
  set list
"}}}

"{{{Mappings
  let mapleader=','
  nnoremap <Leader>2 :set tabstop=2  softtabstop=2 shiftwidth=2<CR>
  nnoremap <Leader>4 :set tabstop=4  softtabstop=4 shiftwidth=4<CR>
  nnoremap <Leader>eg :e ++enc=gbk<CR>
  nnoremap <Leader>eu :e ++enc=utf8<CR>
  nnoremap <Leader>h :nohlsearch<CR>
  nnoremap <leader>l :set list!<CR>
  nnoremap <leader>w :set wrap!<CR>
  nnoremap <leader>f :%!js-beautify -j -q -B -f -<CR>
  nnoremap <c-s> :w<CR>
  noremap <Leader>W :w !sudo tee % > /dev/null
  " Quickly edit/reload the vimrc file
  nnoremap <leader>ev :tabe $MYVIMRC<CR>
  nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
  nnoremap <space> za
  vnoremap <space> zf
  " tab switch key mappings
  " http://vim.wikia.com/wiki/Alternative_tab_navigation
  nnoremap <A-1> 1gt
  nnoremap <A-2> 2gt
  nnoremap <A-3> 3gt
  nnoremap <A-4> 4gt
  nnoremap <A-5> 5gt
  nnoremap <A-6> 6gt
  nnoremap <A-7> 7gt
  nnoremap <A-8> 8gt
  nnoremap <A-9> 9gt
  nnoremap <A-0> 10gt
  " map for xxd editing
  nnoremap <Leader>xd :%!xxd<CR>
  nnoremap <Leader>xr :%!xxd -r<CR>
  nnoremap <leader>t :tabe<cr>
  nnoremap <leader>to :tabonly<cr>
  nnoremap <leader>x :q<cr>
"}}}

"{Plugin settings
  "scrooloose/syntastic
    set statusline+=%{SyntasticStatuslineFlag()}
    let g:syntastic_always_populate_loc_list=0
    let g:syntastic_json_checkers=['jsonlint']
    let g:syntastic_auto_loc_list=0
    let g:syntastic_check_on_open=0
    let g:syntastic_check_on_wq=0
    let g:syntastic_enable_signs=1
    let g:syntastic_aggregate_errors=1
    let g:syntastic_error_symbol="E"
    let g:syntastic_warning_symbol="W"
    "prerequisite:
    "  npm packages:
    "    eslint jsxhint babel-eslint eslint-plugin-react json-lint jshint
    "let g:syntastic_javascript_checkers = ['eslint',
    "    \'jsxhint', 'babel-eslint', 'eslint-plugin-react', 'json-lint',
    "    \'jshint', 'jscs']
    let g:syntastic_javascript_checkers = ['eslint', 'json-lint']
    "let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
    let g:syntastic_python_checkers = ['pylint']
    "let g:syntastic_python_python_exec="/usr/local/bin/python3"
    let g:syntastic_sass_checkers = ['sass', 'sassc']
    "let g:syntastic_scss_checkers = ['sass', 'sassc', 'scsslint']
    let g:syntastic_php_checkers = ['php']
    "let g:syntastic_ruby_checkers = ['robocop']
    "let g:syntastic_coffee_checkes = ['coffeelint']
    let g:syntastic_shell_checkers = ['shellcheck']

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
          \ '~/projects/assets/',
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

  "YouCompleteMe
    if exists(':YcmCompleter')
      let g:ycm_min_num_of_chars_for_completion = 3
      let g:ycm_autoclose_preview_window_after_completion=1
      let g:ycm_complete_in_comments = 1
      let g:ycm_key_list_select_completion = ['<tab>', '<c-n>', '<Down>']
      let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
      let g:ycm_confirm_extra_conf = 0
      " http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
      let g:ycm_key_list_select_completion=[]
      let g:ycm_key_list_previous_completion=[]
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
    endif

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

  "maksimr/vim-jsbeautify
    map <c-f> :call JsBeautify()<cr>
    autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
    autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

  "ctrlp-py-matcher
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
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
"}

"{auto commands
  " Return to last edit position when opening files (You want this!)
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
  autocmd! BufRead,BufNewFile *.markdown set filetype=mkd
  autocmd! BufRead,BufNewFile *.md       set filetype=mkd
  autocmd! BufRead,BufNewFile,BufReadPost *.snippets set filetype=snippets
  autocmd! BufRead,BufNewFile *.json set filetype=json
  autocmd! BufRead,BufNewFile *.ts set filetype=typescript
  autocmd BufNewFile,BufRead *.vm set filetype=html
  autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
  autocmd BufNewFile,BufRead *.conf set filetype=config
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
  autocmd WinEnter  call SetTabLabel()
  autocmd BufEnter call SetTabLabel()
  "https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
  autocmd BufEnter * lcd %:p:h
  autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
  " Automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  " Restore cursor position upon reopening files {{{
  autocmd BufReadPost *
      \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  " }}}
  " gnuplot syntax highlighting
  au BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
  au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
"}
