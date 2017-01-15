set nocompatible
let g:solarized_termtrans=1
"{vim plugins/vim plugin settings
  call plug#begin('/Users/leo/.vim/plugged/')
  "{ file navigation
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'FelikZ/ctrlp-py-matcher'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'noscripter/bufexplorer.zip'
    Plug 'scrooloose/nerdcommenter'
    Plug 'noscripter/nerdtree'
    Plug 'shougo/vimfiler.vim'
    Plug 'dyng/ctrlsf.vim'
  "}
  "{ git
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-git'
    Plug 'gregsexton/gitv'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'junegunn/gv.vim'
  "}
  "{ insert mode auto-completion for quotes, parens, brackets, etc
    Plug 'Raimondi/delimitMate' 
  "}
  "{ TypeScript Syntax file for Vim
    Plug 'Quramy/tsuquyomi'
    Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
    Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'
  "}
  "{ keyword completion system
  "  by maintaining a cache of keywords in the current buffer
    Plug 'Shougo/neocomplete.vim'
    Plug 'Shougo/vimshell'
    Plug 'Shougo/neco-vim'
  "}
  "{ snippet
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Sirver/ultisnips'
    Plug 'honza/vim-snippets'
  "}
  "{ web development
    Plug 'Valloric/MatchTagAlways'
    Plug 'ap/vim-css-color'
    Plug 'beautify-web/js-beautify'
    Plug 'evanmiller/nginx-vim-syntax'
    Plug 'elzr/vim-json'
    Plug 'docunext/closetag.vim'
    Plug 'mattn/emmet-vim'
    Plug 'yuezk/xtpl.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'posva/vim-vue'
    Plug 'vim-scripts/SQLComplete.vim'
    Plug 'jparise/vim-graphql'
  "}
  "{ utility
    Plug 'gcmt/wildfire.vim'
    Plug 'vim-scripts/DrawIt'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'lilydjwg/tailf.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'chrisbra/unicode.vim'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'brooth/far.vim'
    Plug 'scrooloose/syntastic'
    Plug 'mhinz/vim-signify'
    Plug 'mhinz/vim-startify'
    Plug 'mileszs/ack.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'junegunn/vim-emoji'
    Plug 'junegunn/vim-peekaboo'
    Plug 'junegunn/vim-xmark', { 'do': 'make' }
    Plug 'maxbrunsfeld/vim-yankstack'
    Plug 'junkblocker/patchreview-vim'
    Plug 'kshenoy/vim-signature'
    Plug 'Valloric/YouCompleteMe'
    Plug 'Yggdroot/indentLine'
    Plug 'flazz/vim-colorschemes'
    Plug 'godlygeek/tabular'
    Plug 'noscripter/tabman.vim'
    Plug 'amix/open_file_under_cursor.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-vinegar'
    Plug 'vim-airline/vim-airline'
    Plug 'majutsushi/tagbar'
  "}
  "{ markdown plugin
    Plug 'plasticboy/vim-markdown'
    Plug 'dhruvasagar/vim-table-mode'
  "}
  "{xml
    Plug 'othree/xml.vim'
  "}
  "{cpp
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'derekwyatt/vim-protodef'
  "}
  "{ go-lang
    Plug 'fatih/vim-go'
  "}
  "{ python plugin
    Plug 'python-mode/python-mode'
    Plug 'davidhalter/jedi-vim'
    Plug 'nvie/vim-flake8'
  "}
  "{ javascript plugin
    Plug 'heavenshell/vim-jsdoc'
    Plug 'isRuslan/vim-es6'
    Plug 'jaxbot/semantic-highlight.vim'
    Plug 'maksimr/vim-jsbeautify'
    Plug 'marijnh/tern_for_vim'
    Plug 'moll/vim-node'
    Plug 'mxw/vim-jsx'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'neoclide/vim-jsx-improve'
    Plug 'othree/es.next.syntax.vim'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'othree/yajs.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'jason0x43/vim-js-indent'
    Plug 'Quramy/vim-js-pretty-template'
  "}
  call plug#end()
"}

"{Plugin settings
  "vim-startify
    noremap <Leader>s :Startify<CR>
    let g:startify_files_number = 9
    let g:startify_list_order = [
          \ ['   Bookmarks'],
          \ 'bookmarks',
          \ ['   My most recently used files'],
          \ 'files',
          \ ]
    let g:startify_bookmarks = [
          \ '~/projects/assets/',
          \ '~/projects/assets/mercury/nodejs',
          \ '~/projects/assets/mw-mytaobao/nodejs/',
          \ '~/projects/assets/daily.md',
          \ '~/projects/assets/daily-learning.md',
          \ '~/projects/daily/taobao/',
          \ '~/projects/daily/fe-learning/',
          \ '~/projects/assets/blog/',
          \ '~/projects/assets/noscripter.github.io/',
          \ '~/projects/assets/noscripter.github.io/_posts/',
          \ '~/projects/assets/noscripter.github.io/lab/',
          \  '~/projects/daily/fe-learning/playground/',
          \  '~/projects/daily/fe-learning/playground/v8/',
          \  '~/projects/daily/fe-learning/playground/libuv/',
          \]

  "vim-easy-align
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

  "vim-airline
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

  "SirVer/ultisnips
    let g:UltiSnipsUsePythonVersion    = 2
    let g:UltiSnipsExpandTrigger       = "<C-Tab>"
    let g:UltiSnipsListSnippets        = "<C-l>"
    let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
    let g:UltiSnipsEditSplit           = "vertical"

  "scrooloose/syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
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
    let g:NERDTreeCascadeOpenSingleChildDir=0

  "noscripter/tabman.vim
    let g:tabman_side="right"
    let g:tabman_specials=1
    let g:tabman_number = 1
    let g:tabman_toggle = '<leader>bm'
    let g:loaded_tabman = 0

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
      \ '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
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

  "mxw/vim-jsx
    "let g:jsx_ext_required = 0

  "junegunn/fzf.vim
    set rtp+=~/.fzf

  "elzr/vim-json
    let g:vim_json_syntax_conceal = 0

  "Yggdroot/indentLine
    let g:indentLine_showFirstIndentLevel = 1

  "FelikZ/ctrlp-py-matcher
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    let g:ctrlp_lazy_update = 350
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_max_files = 0
    if executable("ag")
        set grepprg=ag\ --nogroup\ --nocolor
        let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
    endif

  "moll/vim-node
    autocmd! User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif

  "othree/javascript-libraries-syntax.vim
    let g:used_javascript_libs = 'react,angularjs,flux'

  "tpope/vim-fugitive
    autocmd! BufReadPost fugitive://* set bufhidden=delete
    set statusline+=%{fugitive#statusline()}
    autocmd! User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif

  "pangloss/vim-javascript
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1

  "plasticboy/vim-markdown
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_toc_autofit = 1
    let g:vim_markdown_emphasis_multiline = 0
    let g:vim_markdown_conceal = 0
    let g:vim_markdown_json_frontmatter = 1
    let g:vim_markdown_new_list_item_indent = 2

  "Quramy/tsuquyomi
    autocmd FileType typescript setlocal completeopt+=menu,preview

  "clausreinke/typescript-tools.vim
    filetype plugin on
    au BufRead,BufNewFile *.ts setlocal filetype=typescript
    set rtp+=~/.vim/plugged/typescript-tools.vim/

  "colorizer
    let g:colorizer_maxlines=100
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

  "noscripter/bufexplorer.zip
  nnoremap <leader>be :BufExplorer<CR>
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

  " https://vi.stackexchange.com/questions/3832/why-doesnt-vimscript-provide-a-random-number-generator
  " generate random numbers while modulus max
  function! Random(max) abort
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
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

  "{auto reload your vimrc
    "augroup reload_vimrc
      "autocmd!
      "autocmd! BufWritePost $MYVIMRC source $MYVIMRC
    "augroup END
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
  set encoding=utf-8 nobomb
  set binary
  set noeol
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
  set backupskip+=/private/tmp/*
  set modeline
  set modelines=4
  set exrc
  set ruler
  set secure
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
  set ttyfast
  set gdefault
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
  set title
  set showtabline=2
  set hidden
  filetype plugin indent on
  set smarttab
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
  set shiftround
  " unicode display
  " http://vim.wikia.com/wiki/Working_with_Unicode
  if has("multi_byte")
    if &termencoding == ""
      let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
  endif
  set cindent

  "set verbosefile=~/.vim/vimbenchmark
  noremap <Leader>s :Startify<CR>
  nnoremap <leader>ne :NERDTreeFind<CR>
  set indentexpr=

  set expandtab

  "hand-made statusline like airline
  "https://www.v2ex.com/t/330610
  "function! Buf_total_num()
  "  return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  "endfunction
  "function! File_size(f)
  "  let l:size = getfsize(expand(a:f))
  "  if l:size == 0 || l:size == -1 || l:size == -2
  "    return ''
  "  endif
  "  if l:size < 1024
  "    return l:size.' bytes'
  "  elseif l:size < 1024*1024
  "    return printf('%.1f', l:size/1024.0).'k'
  "  elseif l:size < 1024*1024*1024
  "    return printf('%.1f', l:size/1024.0/1024.0) . 'm'
  "  else
  "    return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
  "  endif
  "endfunction
  "set statusline=%<%1*[B-%n]%*
  "" TOT is an abbreviation for total
  "set statusline+=%2*[TOT:%{Buf_total_num()}]%*
  "set statusline+=%3*\ %{File_size(@%)}\ %*
  "set statusline+=%4*\ %F\ %*
  "set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
  "set statusline+=%6*\ %m%r%y\ %*
  "set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
  "set statusline+=%8*\ %P\ %*
  "" default bg for statusline is 236 in space-vim-dark
  "hi User1 cterm=bold ctermfg=232 ctermbg=179
  "hi User2 cterm=None ctermfg=214 ctermbg=242
  "hi User3 cterm=None ctermfg=251 ctermbg=240
  "hi User4 cterm=bold ctermfg=169 ctermbg=239
  "hi User5 cterm=None ctermfg=208 ctermbg=238
  "hi User6 cterm=None ctermfg=246 ctermbg=237
  "hi User7 cterm=None ctermfg=250 ctermbg=238
  "hi User8 cterm=None ctermfg=249 ctermbg=240
"}
