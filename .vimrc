"echom "Hacked by leo"
"CHANGELOG:
"  20160917:
"     add plugins xtpl.vim, weex.vim, vim-pug
"  20160918-00:40:50:
"     comment all ctrlp extension plugins and custom settings
"     customize airline left_sep and right_sep
"  20160918-15:49:47
"     comment taboo.vim
"  20161126-21:00:34
"     vimmake
"     asyncrun.vim
"  20161127-00:33:40
"     w0rp/ale use ale to replace syntastic
" NOTE:
"   ultisnips: break from ff10513cddc36f316e5d848c9b54aa8dd9ba9cd5
"   k.vim: <leader>t map conflict
"   changesPlugin.vim <leader>h map conflict
"   yankring.vim <C-P> map conflict
"   comment yankring 20160914
"   comment LeaderF 20160915
"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  "{plugins
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'docunext/closetag.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'mattn/emmet-vim'
    Plugin 'mhinz/vim-startify'
    "Plugin 'scrooloose/syntastic'
    "Plugin 'jaxbot/syntastic-react'
    "Plugin 'myint/syntastic-extras'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-git'
    Plugin 'gregsexton/gitv'
    Plugin 'junegunn/gv.vim'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'mileszs/ack.vim'
    Plugin 'mhinz/vim-signify'
    Plugin 'mhinz/vim-grepper'
    Plugin 'mhinz/vim-randomtag'
    Plugin 'mhinz/vim-hugefile'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'bufexplorer.zip'
    Plugin 'marijnh/tern_for_vim'
    Plugin 'noscripter/tabman.vim'
    Plugin 'mxw/vim-jsx'
    Plugin 'moll/vim-node'
    Plugin 'kshenoy/vim-signature'
    Plugin 'Raimondi/delimitMate'
    Plugin 'junegunn/vim-xmark'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'Valloric/MatchTagAlways'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'othree/es.next.syntax.vim'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'heavenshell/vim-jsdoc'
    Plugin 'beautify-web/js-beautify'
    Plugin 'maksimr/vim-jsbeautify'
    Plugin 'SirVer/ultisnips'
    Plugin 'klen/python-mode'
    Plugin 'thinca/vim-quickrun'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'Shougo/unite.vim'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'Shougo/vimshell.vim'
    Plugin 'Shougo/neocomplete.vim'
    Plugin 'AndrewRadev/splitjoin.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-vinegar'
    Plugin 'honza/vim-snippets'
    Plugin 'fatih/vim-go'
    Plugin 'yuezk/xtpl.vim'
    Plugin 'isRuslan/vim-es6'
    Plugin 'ap/vim-css-color'
    Plugin 'skywind3000/asyncrun.vim'
    Plugin 'skywind3000/vimmake'
    Plugin 'w0rp/ale'
    Plugin 'Yggdroot/indentLine'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'chrisbra/NrrwRgn'
    Plugin 'chrisbra/unicode.vim'
    Plugin 'ryanss/vim-hackernews'
    Plugin 'itchyny/calendar.vim'
    Plugin 'weynhamz/vim-plugin-minibufexpl'
    Plugin 'mattn/gist-vim'
    Plugin 'mbbill/undotree'
    Plugin 'sjl/gundo.vim'
    Plugin 'exvim/ex-utility'
    Plugin 'exvim/ex-project' " focus on project
    Plugin 'exvim/ex-visincr' " add increase numbers
    Plugin 'vim-scripts/LargeFile'
    Plugin 'vim-scripts/Mark'
    Plugin 'vim-scripts/Marks-Browser'
    Plugin 'tpope/vim-characterize'
    Plugin 'vim-scripts/MarkLines'
    Plugin 'tpope/vim-repeat'
    Plugin 'vimwiki/vimwiki'
    Plugin 'vim-scripts/align'
    Plugin 'tpope/vim-speeddating'
    Plugin 'tpope/vim-commentary'
    Plugin 'noscripter/CmdlineComplete'
    Plugin 'dhruvasagar/vim-table-mode'
    Plugin 'tpope/vim-abolish'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'tpope/vim-ragtag'
    Plugin 'tpope/vim-sleuth'
    Plugin 'jmcantrell/vim-virtualenv'
    Plugin 'DataWraith/auto_mkdir'
    Plugin 'vim-scripts/L9'
    Plugin 'vim-scripts/FuzzyFinder'
    Plugin 'vim-voom/VOoM'
    Plugin 'tpope/vim-scriptease'
    Plugin 'tpope/vim-eunuch'
    Plugin 'tpope/vim-obsession'
    Plugin 'majutsushi/tagbar'
    Plugin 'haya14busa/incsearch.vim'
    Plugin 'haya14busa/incsearch-fuzzy.vim'
    Plugin 'kien/rainbow_parentheses.vim'
    Plugin 'lambdalisue/vim-gita'
    Plugin 'mhinz/vim-rfc'
    Plugin 'vim-scripts/rfc-syntax'
    Plugin 'Rykka/easydigraph.vim'
    Plugin 'salsifis/vim-transpose'
    Plugin 'junegunn/vim-github-dashboard'
    Plugin 'Alaya-in-Matrix/record-vim-time'
    Plugin 'Alaya-in-Matrix/vim-activity-log'
    Plugin 'Shougo/vinarise.vim' " ultimate binary editing
    "Plugin 'evanmiller/nginx-vim-syntax'
    "Plugin 'tpope/vim-dispatch'
    "Plugin 'tpope/vim-endwise'
    "Plugin 'svermeulen/vim-easyclip'
    "Plugin 'tpope/vim-unimpaired'
    "Plugin 'nathanaelkane/vim-indent-guides'
    "Plugin 'sheerun/vim-polyglot'
    "Plugin 'garbas/vim-snipmate'
    "Plugin 'bigfish/vim-js-context-coloring'
    "Plugin 'chriskempson/base16-vim'
    "Plugin 'davidhalter/jedi-vim'
    "Plugin 'bling/vim-bufferline'
    "Plugin 'tyru/open-browser.vim'
    "Plugin 'felixSchl/ctrlp-unity3d-docs'
    "Plugin 'voronkovich/ctrlp-nerdtree.vim'
    "Plugin 'elentok/ctrlp-objects.vim'
    "Plugin 'h14i/vim-ctrlp-buftab'
    "Plugin 'vim-scripts/ctrlp-cmdpalette'
    "Plugin 'mattn/ctrlp-windowselector'
    "Plugin 'the9ball/ctrlp-gtags'
    "Plugin 'thiderman/ctrlp-project'
    "Plugin 'mattn/ctrlp-google'
    "Plugin 'ompugao/ctrlp-history'
    "Plugin 'pielgrzym/ctrlp-sessions'
    "Plugin 'prabirshrestha/ctrlp-env'
    "Plugin 'tacahiroy/ctrlp-funky'
    "Plugin 'mattn/ctrlp-launcher'
    "Plugin 'sgur/ctrlp-extensions.vim'
    "Plugin 'JazzCore/ctrlp-cmatcher'
    "Plugin 'brookhong/k.vim'
    "Plugin 'kmnk/vim-unite-giti'
    "Plugin 'junegunn/vim-easy-align'
    "Plugin 'kana/vim-operator-user'
    "Plugin 'haya14busa/vim-operator-flashy'
    "Plugin 'haya14busa/vim-asterisk'
    "Plugin 'Yggdroot/LeaderF'
    "Plugin 'AndrewRadev/sideways.vim'
    "Plugin 'vim-scripts/YankRing.vim'
    "Plugin 'shougo/unite-outline'
    "Plugin 'AndrewRadev/inline_edit.vim'
    "Plugin 'chrisbra/changesPlugin'
    "Plugin 'tomtom/quickfixsigns_vim'
    "Plugin 'Rykka/autotype.vim'
    "Plugin 'chrisbra/csv.vim'
    "Plugin 'vim-ctrlspace/vim-ctrlspace'
    "Plugin 'chrisbra/Colorizer'
    "Plugin 'gcmt/taboo.vim'
    "Plugin 'mattn/vim-maketable'
    "Plugin 'junegunn/vim-emoji'
    "Plugin 'jparise/vim-graphql'
    "Plugin 'yuezk/weex.vim'
    "Plugin 'digitaltoad/vim-pug'
    "Plugin 'jacoborus/tender.vim'
    "Plugin 'manicmaniac/betterga'
    "Plugin 'ddrscott/vim-side-search'
    "Plugin 'ekalinin/Dockerfile.vim'
    "Plugin 'fweep/vim-tabber'
    "Plugin 'mkitt/tabline.vim'
    "Plugin 'dkprice/vim-easygrep'
    "Plugin 'dyng/ctrlsf.vim'
    "Plugin 'ramele/agrep'
    "Plugin 'nelstrom/vim-qargs'
    "Plugin 'rking/ag.vim'
    "Plugin 'shepherdwind/vim-velocity'
    "Plugin 'cakebaker/scss-syntax.vim'
    "Plugin 'hail2u/vim-css3-syntax'
    "Plugin 'tpope/vim-haml'
    "Plugin 'groenewege/vim-less'
    "Plugin 'stylus/stylus'
    "Plugin 'leafgarland/typescript-vim'
    "Plugin 'HerringtonDarkholme/yats.vim'
    "Plugin 'Quramy/tsuquyomi'
    "Plugin 'clausreinke/typescript-tools.vim'
    "Plugin 'ai/autoprefixer'
    "Plugin 'honza/dockerfile.vim'
    "Plugin 'editorconfig/editorconfig-vim'
  "}
  call vundle#end()
"}

"{Mappings
  "K normal command will lookup the keyword in man
  let mapleader=','
  nnoremap <leader>cw :pwd<CR>
  nnoremap <C-tab> :tabn<CR>
  nnoremap <S-C-tab> :tabp<CR>
  nnoremap <Leader>2  :set tabstop=2 softtabstop=2 shiftwidth=2<CR>
  nnoremap <Leader>4  :set tabstop=4 softtabstop=4 shiftwidth=4<CR>
  nnoremap <Leader>eg :e ++enc=gbk<CR>
  nnoremap <Leader>eu :e ++enc=utf8<CR>
  nnoremap <Leader>h  :nohlsearch<CR>
  nnoremap <leader>l  :set list!<CR>
  nnoremap <leader>w  :set wrap!<CR>
  noremap  <Leader>W  :w !sudo tee % > /dev/null
  nnoremap <leader>fm  :%!js-beautify -j -q -B -f -<CR>
  nnoremap <leader>ev :tabe $MYVIMRC<CR>
  nnoremap <leader>e  :e $MYVIMRC<CR>
  nnoremap <Leader>xd :%!xxd<CR>
  nnoremap <Leader>xr :%!xxd -r<CR>
  nnoremap <leader>t  :tabe \| Startify<cr>
  nnoremap <leader>ft :echo strftime('%c')<cr>
  nnoremap <leader>v  :vnew \| Startify<cr>
  nnoremap <leader>to :tabonly<cr>
  nnoremap <leader>x  :q<cr>
  nnoremap <leader>tx :tabclose<cr>
  nnoremap <leader>d  :tabe ~/projects/assets/daily.md<CR>
  nnoremap <leader>de :e ~/projects/assets/daily.md<CR>
  nnoremap <leader>dt :windo diffthis<CR>
  nnoremap <leader>do :windo diffoff<CR>
  nnoremap <leader>;  :%s:::g<Left><Left><Left>
  nnoremap <leader>:  :%s:::cg<Left><Left><Left><Left>
  nnoremap <C-S>      :w<CR>
  nnoremap <space> za
  vnoremap <space> zf
  nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?
              \ '<Bar>diffupdate':''<CR><CR><C-L>
  endif
  nnoremap <D-S-]> gt
  nnoremap <D-S-[> gT
  nnoremap <D-1> 1gt
  nnoremap <D-2> 2gt
  nnoremap <D-3> 3gt
  nnoremap <D-4> 4gt
  nnoremap <D-5> 5gt
  nnoremap <D-6> 6gt
  nnoremap <D-7> 7gt
  nnoremap <D-8> 8gt
  nnoremap <D-9> 9gt
  nnoremap <D-0> :tablast<CR>
  nnoremap [q :cprev<CR>
  nnoremap ]q :cnext<CR>
  nnoremap [Q :cfirst<CR>
  nnoremap ]Q :clast<CR>
  nnoremap <leader>fe :Ex<CR>
  nnoremap gp `[v`]
"}

"{Plugin settings
  "scrooloose/syntastic
    set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_check_on_open=0
    let g:syntastic_always_populate_loc_list=0
    let g:syntastic_auto_loc_list=1
    let g:syntastic_check_on_wq=1
    let g:syntastic_enable_signs=1
    let g:syntastic_aggregate_errors=1
    " 💣 ⚑ ✗ ☯ ⚡
    let g:syntastic_error_symbol="⚡"
    let g:syntastic_warning_symbol="⚑"
    let g:syntastic_json_checkers=['jsonlint']
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_python_checkers = ['pyflakes', 'pylint']
    let g:syntastic_python_python_exec="/usr/local/bin/python3"
    let g:syntastic_sass_checkers = ['sass', 'sassc']
    let g:syntastic_scss_checkers = ['sass', 'sassc', 'scss-lint']
    let g:syntastic_php_checkers = ['php']
    let g:syntastic_ruby_checkers = ['robocop']
    let g:syntastic_coffee_checkes = ['coffeelint']
    let g:syntastic_shell_checkers = ['shellcheck']
    if !exists('g:syntastic_html_tidy_ignore_errors')
        let g:syntastic_html_tidy_ignore_errors = []
    endif
    if !exists('g:syntastic_html_tidy_blocklevel_tags')
        let g:syntastic_html_tidy_blocklevel_tags = []
    endif
    let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy5'
    let g:syntastic_html_tidy_ignore_errors += [
          \ "<ion-",
          \ "discarding unexpected </ion-"]
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ng-"]
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ui-sref"]
    let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]
    let g:syntastic_html_tidy_blocklevel_tags += [
          \ 'ng-include',
          \ 'ng-form'
          \ ]
    let g:syntastic_html_tidy_ignore_errors += [
          \ " proprietary attribute \"ui-sref"]
    let g:syntastic_cpp_check_header = 1
    let g:syntastic_cpp_auto_refresh_includes = 1
    highlight SyntasticErrorSign guifg=white guibg=red
    let g:syntastic_quiet_messages = { "level": "warnings" }

  "scrooloose/nerdtree
    nnoremap <leader>ne :NERDTreeFind<CR>
    nnoremap <leader>nt :NERDTreeToggle<CR>
    let g:NERDTreeShowLineNumbers=1
    let g:NERDTreeChDirMode=2
    let NERDTreeWinPos="left"
    let NERDTreeIgnore=['\.pyc$', '\~$']

  "noscripter/tabman.vim
    let g:tabman_side="right"
    let g:tabman_specials=1
    let g:tabman_number = 1
    let g:tabman_toggle = '<leader>bm'
    let g:loaded_tabman = 0

  "mhinz/vim-startify
    noremap <Leader>s :Startify<CR>
    let g:startify_files_number = 9
    let g:startify_list_order = [
          \ ['   Bookmarks'],
          \ 'bookmarks',
          \ ['   My most recently used files'],
          \ 'files',
          \ ['   These are my sessions:'],
          \ 'sessions']
    let g:startify_bookmarks = [
          \ '~/projects/assets/',
          \ '~/projects/assets/mercury/nodejs',
          \ '~/projects/assets/mercury-daily/nodejs',
          \ '~/projects/assets/mw-mytaobao/nodejs/',
          \ '~/downloads/',
          \ '~/projects/node/',
          \ '~/projects/daily/taobao/',
          \ '~/projects/daily/fe-learning/',
          \ '~/projects/assets/blog/',
          \ '~/projects/assets/noscripter.github.io/',
          \ '~/projects/assets/noscripter.github.io/_posts/',
          \ '~/projects/assets/noscripter.github.io/lab/',
          \  '~/projects/daily/fe-learning/playground/',
          \  '~/projects/daily/fe-learning/playground/v8/',
          \  '~/projects/daily/fe-learning/playground/node/node/',
          \  '~/projects/daily/fe-learning/playground/node/libuv/',
          \  '~/projects/daily/fe-learning/playground/alibaba/'
          \]

  "ctrlpvim/ctrlp.vim
    if exists(':CtrplP')
      let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      let g:ctrlp_working_path_mode='cra'
      let g:ctrlp_root_markers="pom.xml"
      let g:ctrlp_match_window="bottom,order:btt,min:1,max:25,results:25"
      let g:ctrlp_show_hidden=1
      let g:ctrlp_use_caching=1
      let g:ctrlp_cache_dir=$HOME.'/.cache/ctrlp'
    endif
    nnoremap <leader>b :CtrlPBuffer<CR>
    nnoremap <C-P> :CtrlPMixed<CR>

  "Valloric/YouCompleteMe
    let g:ycm_min_num_of_chars_for_completion = 3
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_complete_in_comments = 1
    let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_global_ycm_extra_conf=
      \ '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
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
    if executable('ag')
      set grepprg=ag\ --nogroup\ --nocolor
    endif

  "maksimr/vim-jsbeautify
    map <c-f> :call JsBeautify()<cr>
    autocmd! FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd! FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd! FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd! FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd! FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd! FileType javascript vnoremap <buffer> <c-f> :call RangeJsBeautify()<cr>
    autocmd! FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
    autocmd! FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
    autocmd! FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd! FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

  "FelikZ/ctrlp-py-matcher
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    let g:ctrlp_lazy_update = 350
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_max_files = 0
    if executable("ag")
        set grepprg=ag\ --nogroup\ --nocolor
        let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
    endif

  "SirVer/ultisnips
    let g:UltiSnipsUsePythonVersion    = 2
    let g:UltiSnipsExpandTrigger       = "<C-Tab>"
    let g:UltiSnipsListSnippets        = "<C-l>"
    let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
    let g:UltiSnipsEditSplit           = "vertical"

  "moll/vim-node
    autocmd! User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif

  "othree/javascript-libraries-syntax.vim
    let g:used_javascript_libs = 'react,angularjs,flux'

  "vim-airline/vim-airline
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
    let g:airline_left_alt_sep = '▶'
    let g:airline_right_sep = '⮂'
    let g:airline_right_alt_sep = '◀'
    "let g:airline_extensions = ['branch', 'tabline', 'bufferline', 'csv',
          "\ 'hunks', 'ctrlp', 'virtualenv']
    "let g:airline#extensions#tabline#enabled = 1
    "let g:airline#extensions#tabline#show_buffers=1
    "let g:airline#extensions#bufferline#enabled = 1
    "let g:airline#extensions#branch#enabled = 1
    "let g:airline#extensions#csv#enabled = 1
    "let g:airline#extensions#hunks#enabled = 1
    "let g:airline#extensions#hunks#non_zero_only = 1
    "let g:airline#extensions#ctrlp#show_adjacent_modes = 1
    "let g:airline#extensions#virtualenv#enabled = 1
    "let g:airline#extensions#whitespace#enabled = 1

  "tpope/vim-fugitive
    autocmd! BufReadPost fugitive://* set bufhidden=delete
    set statusline+=%{fugitive#statusline()}
    autocmd! User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif

  "mxw/vim-jsx
    let g:jsx_ext_required = 1 " Allow JSX in normal JS files

  "myint/syntastic-extras
    let g:syntastic_c_checkers = ['check'] " c
    let g:syntastic_cpp_checkers = ['check'] " c++
    let g:syntastic_cfg_checkers = ['cfg'] " cfg
    let g:syntastic_dosini_checkers = ['cfg'] " dosini
    let g:syntastic_make_checkers = ['gnumake']
    let g:syntastic_gitcommit_checkers = ['language_check']
    let g:syntastic_svn_checkers = ['language_check']
    let g:syntastic_python_checkers = ['pyflakes_with_warnings']
    let g:syntastic_yaml_checkers = ['pyyaml']

  "tacahiroy/ctrlp-funky
    "let g:ctrlp_funky_syntax_highlight = 1
    "let g:ctrlp_funky_matchtype = 'path'
    "nnoremap <Leader>fu :CtrlPFunky<CR>
    "nnoremap <Leader>fU :execute 'CtrlPFunky' .expand('<cword')<CR>

  "voronkovich/ctrlp-nerdtree.vim
    "let g:ctrlp_nerdtree_show_hidden=1

  "pielgrzym/ctrlp-sessions
    "let g:ctrlp_extensions = ['funky', 'sessions' , 'k' , 'tag', 'mixed',
          "\ 'quickfix', 'undo', 'line', 'changes', 'cmdline', 'menu']

  "brookhong/k.vim
    "nnoremap <silend> <leader>qe:CtrlPK<CR>

  "mattn/ctrlp-launcher
    "nnoremap <leader>pl :<C-U>CtrlpLauncher<CR>

  "Shougo/unite.vim
    nnoremap <leader>un :Unite<CR>
    let g:unite_source_history_yank_enable=1
    try
      let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
      call unite#filters#matcher_default#use(['matcher_fuzzy'])
    catch
    endtry
    let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
    nnoremap <space>u :split<CR> :<C-u>Unite -start-insert file_rec/async<CR>
    nnoremap <space>r <Plug>(unite_restart)
    let g:unite_source_menu_menus.git = {
        \ 'description' : '            gestionar repositorios git
            \                            ⌘ [espacio]g',
        \}
    let g:unite_source_menu_menus.git.command_candidates = [
        \['▷ tig                                              ⌘ ,gt',
            \'normal ,gt'],
        \['▷ git status       (Fugitive)                      ⌘ ,gs',
            \'Gstatus'],
        \['▷ git diff         (Fugitive)                      ⌘ ,gd',
            \'Gdiff'],
        \['▷ git commit       (Fugitive)                      ⌘ ,gc',
            \'Gcommit'],
        \['▷ git log          (Fugitive)                      ⌘ ,gl',
            \'exe "silent Glog | Unite quickfix"'],
        \['▷ git blame        (Fugitive)                      ⌘ ,gb',
            \'Gblame'],
        \['▷ git stage        (Fugitive)                      ⌘ ,gw',
            \'Gwrite'],
        \['▷ git checkout     (Fugitive)                      ⌘ ,go',
            \'Gread'],
        \['▷ git rm           (Fugitive)                      ⌘ ,gr',
            \'Gremove'],
        \['▷ git mv           (Fugitive)                      ⌘ ,gm',
            \'exe "Gmove " input("destino: ")'],
        \['▷ git push         (Fugitive, salida por buffer)   ⌘ ,gp',
            \'Git! push'],
        \['▷ git pull         (Fugitive, salida por buffer)   ⌘ ,gP',
            \'Git! pull'],
        \['▷ git prompt       (Fugitive, salida por buffer)   ⌘ ,gi',
            \'exe "Git! " input("comando git: ")'],
        \['▷ git cd           (Fugitive)',
            \'Gcd'],
        \]
    nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>

  "JazzCore/ctrlp-cmatcher
    "let g:ctrlp_match_func={'match': 'matcher#cmatch'}

  "pangloss/vim-javascript
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1

  "bigfish/vim-js-context-coloring
    let g:js_context_colors_colorize_comments = 1

  "fatih/vim-go
    let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
    let g:go_list_type = "quickfix"

  "nathanaelkane/vim-indent-guides
    let g:indent_guide_size=1

  "Yggdroot/indentLine
    let g:indentLine_showFirstIndentLevel = 1
    let g:indentLine_enabled = 1
    let g:indentLine_concealcursor = ""

  "bling/vim-bufferline
    "let g:bufferline_echo = 1
    "autocmd! VimEnter *
      "\ let &statusline='%{bufferline#refresh_status()}'
        "\ .bufferline#get_status_string()

  "skywind3000/asyncrun.vim
  augroup vimrc
    autocmd QuickFixCmdPost * botright copen 8
    " auto open quickfix window when text adds to it
    autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(8, 1)
    " auto open quickfix window when asyncrun starts
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
  augroup END

  "plasticboy/vim-markdown
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_toc_autofit = 1
    let g:vim_markdown_emphasis_multiline = 0
    let g:vim_markdown_conceal = 0
    let g:vim_markdown_json_frontmatter = 1
    let g:vim_markdown_new_list_item_indent = 2

  "thinca/vim-quickrun
    let g:quickrun_no_default_key_mappings = 1

  "tpope/vim-obsession
    "set statusline+= %{ObsessionStatus()}

  "w0rp/ale
    " disable linter
    let g:ale_linters = {
          \ 'javascript': ['eslint'],
          \}
    let g:ale_sign_error = "⚡"
    let g:ale_sign_warning = "⚑"
    set statusline+=%{ALEGetStatusLine()}
    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    nmap <silent> <C-k> <Plug>(ale_previous_wrap)
    nmap <silent> <C-j> <Plug>(ale_next_wrap)
"}

"{helper functions
  command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
  function! QuickfixFilenames()
    " Building a hash ensures we get each buffer only once
    let buffer_numbers = {}
    for quickfix_item in getqflist()
      let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
    endfor
    return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
  endfunction

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
    for bufnr in bufnrlist
      if getbufvar(bufnr, "&modified")
        let label = '+'
        break
      endif
    endfor
    let label .= v:lnum.': '
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
      if &buftype=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    else
      let name = fnamemodify(name,":t")
    endif
    let label .= name
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
  endfunction

  function! SetTabLabel()
    set guitablabel=%{GuiTabLabel()}
  endfunction

  au VimEnter * :call SetTabLabel()
  autocmd! BufEnter,WinEnter call SetTabLabel()

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

  function! GuiTabToolTip()
    let tip = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
      if tip != ''
        let tip .= " \n "
      endif
      let name = bufname(bufnr)
      if getbufvar(bufnr, "&modified")
        let tip .= ' [+]'
      endif
    endfor
    return tip
  endfunction
  set guitabtooltip=%{GuiTabToolTip()}

  function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
  endfunction
  nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>
  nnoremap _= :call Preserve("normal gg=G")<CR>

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

  " Add argument (can be negative, default 1) to global variable i.
  " Return value of i before the change.
  function! Inc(...)
    let result = g:i
    let g:i += a:0 > 0 ? a:1 : 1
    return result
  endfunction
  " Usage
  " :let i = 1 | %sabc/\='xyz_'.Inc()/g
"}

"{auto commands
    autocmd! BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  "{auto filetype
    autocmd! BufRead,BufNewFile,BufReadPost *.py            set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.markdown      set filetype=mkd tabstop=4 softtabstop=4 shiftwidth=4 expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.fdoc          set filetype=yaml expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.md            set filetype=markdown tabstop=4 softtabstop=4 shiftwidth=4 expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.json          set filetype=json expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.ts            set filetype=typescript expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.vm            set filetype=html expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.html.twig     set filetype=html.twig expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.conf          set filetype=config expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.scss          set filetype=scss.css expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.vm            set filetype=html expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.coffee        set filetype=coffee expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.rss,*.atom    set filetype=xml expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.vm            set filetype=velocity expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.xtpl          set filetype=html expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.ejs           set filetype=html expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.snippets      set filetype=snippets expandtab
    autocmd! BufRead,BufNewFile,BufReadPost *.xtpl          set filetype=html
    autocmd! BufRead,BufNewFile,BufReadPost *.jinja         set syntax=htmljinja
    autocmd! BufRead,BufNewFile,BufReadPost *.plt,*.gnuplot set filetype=gnuplot
    autocmd! BufRead,BufNewFile,BufReadPost *               set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd! FileType gitcommit             setlocal spell textwidth=72
    autocmd! FileType ruby                  set dictionary+=$HOME/.vim/dict/ruby.dict
    autocmd! FileType javascript            set dictionary+=$HOME/.vim/dict/node.dict
    autocmd! FileType javascript            setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd! BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
  "}

  "{auto reload your vimrc
    augroup reload_vimrc
      autocmd!
      autocmd! BufWritePost $MYVIMRC source $MYVIMRC
    augroup END
  "}

  "{highlight unwanted spaces
    highlight ExtraWhitespace ctermbg=red guibg=red
    augroup WhitespaceMatch
      " Remove ALL autocommands for the WhitespaceMatch group.
      autocmd!
      autocmd! BufWinEnter * let w:whitespace_match_number =
            \ matchadd('ExtraWhitespace', '\s\+$')
      autocmd! InsertEnter * call s:ToggleWhitespaceMatch('i')
      autocmd! InsertLeave * call s:ToggleWhitespaceMatch('n')
    augroup END
    function! s:ToggleWhitespaceMatch(mode)
      let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
      if exists('w:whitespace_match_number')
        call matchdelete(w:whitespace_match_number)
        call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
      else
        " Something went wrong, try to be graceful.
        let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
      endif
    endfunction
  "}
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
  set linespace=0
  set showmatch
  set matchtime=0
  set winminheight=0
  set confirm
  if has('clipboard')
    if has('unnamedplus')
      set clipboard=unnamed,unnamedplus
    else
      set clipboard=unnamed
    endif
  endif
  set nobackup
  set noswapfile
  set noundofile
  set undodir=~/.undodir
  set nowritebackup
  set iskeyword-=_,.,=,-,:,#,
  set foldmethod=indent
  set foldnestmax=10
  set guifont=Source\ Code\ Pro\ for\ Powerline:h16
  set autoread
  set lazyredraw
  set switchbuf=useopen
  set wildmenu
  set copyindent
  set wildmode=list:longest,full
  set whichwrap=b,s,h,l,<,>,>h,[,]
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class " Linux/MacOSX
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe " Windows
  if !&scrolloff
    set scrolloff=1
  endif
  if !&sidescrolloff
    set sidescrolloff=1
  endif
  set display+=lastline
  set nowrap
  set backspace=eol,start,indent
  syntax enable
  set textwidth=78
  set colorcolumn=+1
  set autoindent
  set smartindent
  if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
  endif
  set cursorcolumn
  set cursorline
  set autochdir
  set laststatus=2
  set showtabline=2
  set hidden
  filetype plugin indent on
  set noerrorbells novisualbell t_vb=
  set t_vb=
  set visualbell t_vb=
  au GuiEnter * set visualbell t_vb=
  set autowrite
  set autowriteall
  set dictionary+=/usr/share/dict/words
  set dictionary+=~/.vim/dict/
  set shortmess+=filmnrxoOtT
  set showmode
  set showcmd
  set viewoptions=folds,options,cursor,unix,slash
  set virtualedit=onemore
  set completeopt=menuone,menu,preview,longest
  colorscheme solarized
  set nofoldenable
  set foldlevel=1
  set foldlevelstart=99
  set mouse=a
  set history=100
  set undolevels=400
  set timeoutlen=500
  set formatoptions+=t
  if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j
  endif
  set formatoptions-=l
  set wrapmargin=2
  set list
  set guioptions=
  syntax on
  set background=dark
  set t_Co=256
  set paste
  set splitbelow
  set splitright
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
  set verbosefile=~/.vim/vimbenchmark
  set shiftround
"}
