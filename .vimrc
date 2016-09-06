"{vundle setup
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  "{plugins
    Plugin 'gmarik/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tacahiroy/ctrlp-funky'
    Plugin 'FelikZ/ctrlp-py-matcher'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'docunext/closetag.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'mattn/emmet-vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'scrooloose/syntastic'
    Plugin 'jaxbot/syntastic-react'
    Plugin 'myint/syntastic-extras'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-git'
    Plugin 'gregsexton/gitv'
    Plugin 'mileszs/ack.vim'
    Plugin 'mhinz/vim-signify'
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
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'othree/es.next.syntax.vim'
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'beautify-web/js-beautify'
    Plugin 'maksimr/vim-jsbeautify'
    Plugin 'SirVer/ultisnips'
  "}
  call vundle#end()
"}

"{Mappings
  let mapleader=','
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
  nnoremap <leader>f  :%!js-beautify -j -q -B -f -<CR>
  nnoremap <leader>ev :tabe $MYVIMRC<CR>
  nnoremap <Leader>xd :%!xxd<CR>
  nnoremap <Leader>xr :%!xxd -r<CR>
  nnoremap <leader>t  :tabe \| Startify<cr>
  nnoremap <leader>tm :echo strftime('%c')<cr>
  nnoremap <leader>v  :vnew \| Startify<cr>
  nnoremap <leader>to :tabonly<cr>
  nnoremap <leader>x  :q<cr>
  nnoremap <leader>tx :tabclose<cr>
  nnoremap <leader>d  :tabe ~/projects/assets/daily.md<CR>
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
  nnoremap - :Ex<Cr>
"}

"{Plugin settings
  "scrooloose/syntastic
    set statusline+=%#warningmsg#
    set statusline+=%*
    let g:syntastic_check_on_open=0
    let g:syntastic_always_populate_loc_list=1
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
    let g:syntastic_scss_checkers = ['sass', 'sassc', 'scsslint']
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
          \ '~/projects/assets/noscripter.github.io/',
          \ '~/projects/assets/noscripter.github.io/_posts/',
          \ '~/projects/assets/noscripter.github.io/lab/',
          \  '~/projects/daily/fe-learning/playground/']

  "ctrlpvim/ctrlp.vim
    if exists(':CtrplP')
      let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      let g:ctrlp_use_caching = 0
    endif
    nnoremap <leader>b :CtrlPBuffer<CR>

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
    autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer> <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
    autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

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
    autocmd User Node
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
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''

  "tpope/vim-fugitive
    autocmd BufReadPost fugitive://* set bufhidden=delete
    set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
    autocmd User fugitive
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
    let g:ctrlp_funky_syntax_highlight = 1
    let g:ctrlp_funky_matchtype = 'path'
    nnoremap <Leader>fu :CtrlPFunky<CR>
    nnoremap <Leader>fU :execute 'CtrlPFunky' .expand('<cword')<CR>
"}

"{helper functions
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
  autocmd BufEnter,WinEnter call SetTabLabel()

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
"}

"{auto commands
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
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

  "{auto reload your vimrc
  augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
  augroup END
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
  set guioptions=e
  syntax on
  set background=dark
  set t_Co=256
  set paste
  set splitbelow
  set splitright
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
"}
